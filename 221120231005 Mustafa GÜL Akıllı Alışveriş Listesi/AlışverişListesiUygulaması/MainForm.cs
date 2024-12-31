using System;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;
using System.IO;

namespace AlışverişListesiUygulaması
{
    public partial class MainForm : Form
    {
        private Label lblTotalPrice;
        private Label lblMarkets;

        public MainForm()
        {
            InitializeComponent();
            this.WindowState = FormWindowState.Maximized;

            // Toplam fiyat etiketi oluşturuluyor
            lblTotalPrice = new Label
            {
                Dock = DockStyle.Bottom,
                Font = new Font("Arial", 12),
                Height = 40,
                TextAlign = ContentAlignment.MiddleCenter
            };
            panelShoppingList.Controls.Add(lblTotalPrice);

            // Marketler etiketi oluşturuluyor
            lblMarkets = new Label
            {
                Dock = DockStyle.Bottom,
                Font = new Font("Arial", 12),
                Height = 40,
                TextAlign = ContentAlignment.MiddleCenter
            };
            panelShoppingList.Controls.Add(lblMarkets);
        }

        // Form yüklendiğinde alışveriş listesini günceller
        private void MainForm_Load(object sender, EventArgs e)
        {
            UpdateShoppingList();
        }

        // Alışveriş listesini günceller
        private void UpdateShoppingList()
        {
            lstShoppingList.Items.Clear();
            decimal totalPrice = 0;
            HashSet<string> marketNames = new HashSet<string>();

            string connectionString = "Server=DESKTOP-GE9UJQI;Database=AlisverisUygulamasi;Trusted_Connection=True;";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = @"
                    SELECT p.ProductName, m.MarketName, sp.Quantity, pp.Price
                    FROM ShoppingList sp
                    JOIN Products p ON sp.ProductID = p.ProductID
                    JOIN Markets m ON sp.MarketID = m.MarketID
                    JOIN ProductPrices pp ON sp.ProductID = pp.ProductID AND sp.MarketID = pp.MarketID";
                SqlCommand cmd = new SqlCommand(query, connection);
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    string productName = reader["ProductName"].ToString();
                    string marketName = reader["MarketName"].ToString();
                    int quantity = (int)reader["Quantity"];
                    decimal price = Math.Round((decimal)reader["Price"], 2);
                    totalPrice += price * quantity;
                    marketNames.Add(marketName);
                    lstShoppingList.Items.Add($"{productName} - {marketName} - {quantity} adet - {price:C2}");
                }
            }

            lblEmptyList.Visible = lstShoppingList.Items.Count == 0;

            lblTotalPrice.Text = $"Toplam Fiyat: {totalPrice:C2}";
            lblMarkets.Text = "Gidilmesi Gereken Marketler: " + string.Join(", ", marketNames);
        }

        // Ürün ekleme ekranını açar
        private void btnAddProduct_Click(object sender, EventArgs e)
        {
            panelRightSide.Controls.Clear();
            AddBackButton(panelRightSide, GoBackToMain);

            Label lblTitle = new Label
            {
                Text = "Ürün Ekleme Ekranı",
                Dock = DockStyle.Top,
                Font = new Font("Arial", 12),
                Height = 40,
                TextAlign = ContentAlignment.MiddleCenter
            };
            panelRightSide.Controls.Add(lblTitle);

            string[] categories = { "Gıda", "Temizlik", "Elektronik", "Giyim", "Kişisel Bakım", "Bebek Ürünleri", "Ev ve Yaşam", "Evcil Hayvan Ürünleri", "Oyuncaklar", "Kırtasiye" };
            int yPos = 90;

            foreach (var category in categories)
            {
                Button btnCategory = new Button
                {
                    Text = category,
                    Width = 150,
                    Height = 30,
                    Location = new Point(10, yPos)
                };
                btnCategory.Click += BtnCategory_Click;
                panelRightSide.Controls.Add(btnCategory);
                yPos += 40;
            }
        }

        // Kategori seçildiğinde ürünleri gösterir
        private void BtnCategory_Click(object sender, EventArgs e)
        {
            Button btnCategory = sender as Button;
            string selectedCategory = btnCategory.Text;

            Panel pnlProducts = new Panel
            {
                Dock = DockStyle.Fill
            };
            panelRightSide.Controls.Clear();
            AddBackButton(panelRightSide, btnAddProduct_Click);
            panelRightSide.Controls.Add(pnlProducts);

            Label lblProductsTitle = new Label
            {
                Text = selectedCategory + " Kategorisindeki Ürünler",
                Dock = DockStyle.Top,
                Font = new Font("Arial", 12),
                Height = 40,
                TextAlign = ContentAlignment.MiddleCenter
            };
            pnlProducts.Controls.Add(lblProductsTitle);

            string connectionString = "Server=DESKTOP-GE9UJQI;Database=AlisverisUygulamasi;Trusted_Connection=True;";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = @"
                    SELECT p.ProductID, p.ProductName
                    FROM Products p
                    JOIN Categories c ON p.CategoryID = c.CategoryID
                    WHERE c.CategoryName = @CategoryName";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@CategoryName", selectedCategory);
                SqlDataReader reader = cmd.ExecuteReader();

                int yPos = 90;
                while (reader.Read())
                {
                    int productId = (int)reader["ProductID"];
                    string productName = reader["ProductName"].ToString();

                    Label lblProduct = new Label
                    {
                        Text = productName,
                        Width = 200,
                        Height = 30,
                        Location = new Point(10, yPos)
                    };
                    ComboBox cboMarkets = new ComboBox
                    {
                        Width = 100,
                        Height = 30,
                        Location = new Point(220, yPos),
                        Tag = productId
                    };

                    AddMarketOptions(cboMarkets, productId);

                    Button btnAddToList = new Button
                    {
                        Text = "Listeye Ekle",
                        Width = 100,
                        Height = 30,
                        Location = new Point(330, yPos)
                    };
                    btnAddToList.Click += BtnAddToList_Click;
                    pnlProducts.Controls.Add(lblProduct);
                    pnlProducts.Controls.Add(cboMarkets);
                    pnlProducts.Controls.Add(btnAddToList);
                    yPos += 40;
                }
            }
        }

        // Geri butonu ekler
        private void AddBackButton(Panel panel, EventHandler eventHandler)
        {
            Button btnBack = new Button
            {
                Text = "Geri",
                Width = 100,
                Height = 30,
                Location = new Point(10, 10)
            };
            btnBack.Click += eventHandler;
            panel.Controls.Add(btnBack);
        }

        // Ana menüye geri döner
        private void GoBackToMain(object sender, EventArgs e)
        {
            panelRightSide.Controls.Clear();
            panelRightSide.Controls.Add(btnAddProduct);
            panelRightSide.Controls.Add(btnRemoveProduct);
            panelRightSide.Controls.Add(btnClearList);
            panelRightSide.Controls.Add(btnSaveList);
        }

        // Market seçeneklerini ekler
        private void AddMarketOptions(ComboBox cboMarkets, int productId)
        {
            string connectionString = "Server=DESKTOP-GE9UJQI;Database=AlisverisUygulamasi;Trusted_Connection=True;";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = @"
                    SELECT m.MarketName, pp.Price
                    FROM ProductPrices pp
                    JOIN Markets m ON pp.MarketID = m.MarketID
                    WHERE pp.ProductID = @ProductID";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@ProductID", productId);
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    string marketName = reader["MarketName"].ToString();
                    decimal price = Math.Round((decimal)reader["Price"], 2);
                    cboMarkets.Items.Add($"{marketName} - {price:C2}");
                }
            }
        }

        // Ürünü listeye ekler
        private void BtnAddToList_Click(object sender, EventArgs e)
        {
            Button btnAddToList = sender as Button;
            ComboBox cboMarkets = btnAddToList.Parent.Controls.OfType<ComboBox>().FirstOrDefault(c => c.Location.Y == btnAddToList.Location.Y);
            if (cboMarkets != null && cboMarkets.SelectedItem != null)
            {
                string selectedMarket = cboMarkets.SelectedItem.ToString();
                int productId = (int)cboMarkets.Tag;
                string connectionString = "Server=DESKTOP-GE9UJQI;Database=AlisverisUygulamasi;Trusted_Connection=True;";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = @"
                        INSERT INTO ShoppingList (ProductID, MarketID, Quantity)
                        VALUES (@ProductID, 
                            (SELECT MarketID FROM Markets WHERE MarketName = @MarketName),
                            1)";
                    SqlCommand cmd = new SqlCommand(query, connection);
                    cmd.Parameters.AddWithValue("@ProductID", productId);
                    cmd.Parameters.AddWithValue("@MarketName", selectedMarket.Split('-')[0].Trim());
                    cmd.ExecuteNonQuery();
                }

                MessageBox.Show($"{selectedMarket} marketinden ürün eklendi.");
                UpdateShoppingList();
            }
            else
            {
                MessageBox.Show("Lütfen bir market seçiniz.");
            }
        }

        // Ürünü listeden kaldırır
        private void btnRemoveProduct_Click(object sender, EventArgs e)
        {
            if (lstShoppingList.SelectedItem != null)
            {
                string selectedItem = lstShoppingList.SelectedItem.ToString();
                string productName = selectedItem.Split('-')[0].Trim();
                string marketName = selectedItem.Split('-')[1].Trim();

                string connectionString = "Server=DESKTOP-GE9UJQI;Database=AlisverisUygulamasi;Trusted_Connection=True;";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = @"
                        DELETE FROM ShoppingList
                        WHERE ProductID = (SELECT ProductID FROM Products WHERE ProductName = @ProductName)
                        AND MarketID = (SELECT MarketID FROM Markets WHERE MarketName = @MarketName)";
                    SqlCommand cmd = new SqlCommand(query, connection);
                    cmd.Parameters.AddWithValue("@ProductName", productName);
                    cmd.Parameters.AddWithValue("@MarketName", marketName);
                    cmd.ExecuteNonQuery();
                }

                UpdateShoppingList();
            }
            else
            {
                MessageBox.Show("Lütfen kaldırmak için bir ürün seçiniz.");
            }
        }

        // Listeyi temizler
        private void btnClearList_Click(object sender, EventArgs e)
        {
            string connectionString = "Server=DESKTOP-GE9UJQI;Database=AlisverisUygulamasi;Trusted_Connection=True;";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "DELETE FROM ShoppingList";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.ExecuteNonQuery();
            }

            UpdateShoppingList();
        }

        // Listeyi kaydeder
        private void btnSaveList_Click(object sender, EventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog
            {
                Filter = "Text Files (*.txt)|*.txt",
                DefaultExt = "txt",
                AddExtension = true
            };

            if (saveFileDialog.ShowDialog() == DialogResult.OK)
            {
                using (StreamWriter writer = new StreamWriter(saveFileDialog.FileName))
                {
                    foreach (var item in lstShoppingList.Items)
                    {
                        writer.WriteLine(item.ToString());
                    }
                }

                MessageBox.Show("Liste başarıyla kaydedildi.");
            }
        }
    }
}
