using AlışverişListesiUygulaması;
using System;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace AlisverisUygulamasi
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        // Giriş butonuna tıklandığında çalışır
        private void btnLogin_Click(object sender, EventArgs e)
        {
            string connectionString = "Server=DESKTOP-GE9UJQI;Database=AlisverisUygulamasi;Trusted_Connection=True;";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT COUNT(1) FROM Users WHERE UserName=@UserName AND Password=@Password";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                int count = Convert.ToInt32(cmd.ExecuteScalar());

                if (count == 1)
                {
                    this.Hide();
                    MainForm mainForm = new MainForm();
                    mainForm.Show();
                }
                else
                {
                    MessageBox.Show("Kullanıcı adı veya şifre yanlış.");
                }
            }
        }
    }
}
