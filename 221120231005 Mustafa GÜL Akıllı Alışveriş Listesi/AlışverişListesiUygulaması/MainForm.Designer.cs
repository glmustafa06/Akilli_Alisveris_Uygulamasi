namespace AlışverişListesiUygulaması
{
    partial class MainForm
    {
        private System.ComponentModel.IContainer components = null;
        private System.Windows.Forms.SplitContainer splitContainerMain;
        private System.Windows.Forms.Panel panelShoppingList;
        private System.Windows.Forms.Panel panelRightSide;
        private System.Windows.Forms.Button btnAddProduct;
        private System.Windows.Forms.Button btnRemoveProduct;
        private System.Windows.Forms.Button btnClearList;
        private System.Windows.Forms.Button btnSaveList;
        private System.Windows.Forms.ListBox lstShoppingList; // Alışveriş Listesi için ListBox
        private System.Windows.Forms.Label lblEmptyList; // Boş liste için etiket

        // Dispose metodu, bileşenleri serbest bırakır.
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        // Form bileşenlerini başlatır.
        private void InitializeComponent()
        {
            splitContainerMain = new SplitContainer();
            panelShoppingList = new Panel();
            panelRightSide = new Panel();
            btnAddProduct = new Button();
            btnRemoveProduct = new Button();
            btnClearList = new Button();
            btnSaveList = new Button();
            lstShoppingList = new ListBox();
            lblEmptyList = new Label();
            ((System.ComponentModel.ISupportInitialize)splitContainerMain).BeginInit();
            splitContainerMain.Panel1.SuspendLayout();
            splitContainerMain.Panel2.SuspendLayout();
            splitContainerMain.SuspendLayout();
            panelRightSide.SuspendLayout();
            SuspendLayout();
            // 
            // splitContainerMain
            // 
            splitContainerMain.Dock = DockStyle.Fill;
            splitContainerMain.Location = new Point(0, 0);
            splitContainerMain.Name = "splitContainerMain";
            // 
            // splitContainerMain.Panel1
            // 
            splitContainerMain.Panel1.Controls.Add(panelShoppingList);
            // 
            // splitContainerMain.Panel2
            // 
            splitContainerMain.Panel2.Controls.Add(panelRightSide);
            splitContainerMain.Size = new Size(800, 450);
            splitContainerMain.SplitterDistance = 400;
            splitContainerMain.TabIndex = 0;
            // 
            // panelShoppingList
            // 
            panelShoppingList.Controls.Add(lstShoppingList);
            panelShoppingList.Controls.Add(lblEmptyList);
            panelShoppingList.Dock = DockStyle.Fill;
            panelShoppingList.Location = new Point(0, 0);
            panelShoppingList.Name = "panelShoppingList";
            panelShoppingList.Size = new Size(400, 450);
            panelShoppingList.TabIndex = 0;
            // 
            // lstShoppingList
            // 
            lstShoppingList.Dock = DockStyle.Fill;
            lstShoppingList.FormattingEnabled = true;
            lstShoppingList.Location = new Point(0, 0);
            lstShoppingList.Name = "lstShoppingList";
            lstShoppingList.Size = new Size(400, 450);
            lstShoppingList.TabIndex = 0;
            // 
            // lblEmptyList
            // 
            lblEmptyList.AutoSize = true;
            lblEmptyList.Location = new Point(150, 200);
            lblEmptyList.Name = "lblEmptyList";
            lblEmptyList.Size = new Size(94, 13);
            lblEmptyList.TabIndex = 1;
            lblEmptyList.Text = "Henüz ürün eklenmedi";
            lblEmptyList.Visible = false;
            // 
            // panelRightSide
            // 
            panelRightSide.Controls.Add(btnAddProduct);
            panelRightSide.Controls.Add(btnRemoveProduct);
            panelRightSide.Controls.Add(btnClearList);
            panelRightSide.Controls.Add(btnSaveList);
            panelRightSide.Dock = DockStyle.Fill;
            panelRightSide.Location = new Point(0, 0);
            panelRightSide.Name = "panelRightSide";
            panelRightSide.Size = new Size(396, 450);
            panelRightSide.TabIndex = 0;
            // 
            // btnAddProduct
            // 
            btnAddProduct.Location = new Point(50, 50);
            btnAddProduct.Name = "btnAddProduct";
            btnAddProduct.Size = new Size(100, 50);
            btnAddProduct.TabIndex = 0;
            btnAddProduct.Text = "Ürün Ekle";
            btnAddProduct.UseVisualStyleBackColor = true;
            btnAddProduct.Click += btnAddProduct_Click;
            // 
            // btnRemoveProduct
            // 
            btnRemoveProduct.Location = new Point(50, 110);
            btnRemoveProduct.Name = "btnRemoveProduct";
            btnRemoveProduct.Size = new Size(100, 50);
            btnRemoveProduct.TabIndex = 1;
            btnRemoveProduct.Text = "Ürün Kaldır";
            btnRemoveProduct.UseVisualStyleBackColor = true;
            btnRemoveProduct.Click += btnRemoveProduct_Click;
            // 
            // btnClearList
            // 
            btnClearList.Location = new Point(50, 170);
            btnClearList.Name = "btnClearList";
            btnClearList.Size = new Size(100, 50);
            btnClearList.TabIndex = 2;
            btnClearList.Text = "Listeyi Temizle";
            btnClearList.UseVisualStyleBackColor = true;
            btnClearList.Click += btnClearList_Click;
            // 
            // btnSaveList
            // 
            btnSaveList.Location = new Point(50, 230);
            btnSaveList.Name = "btnSaveList";
            btnSaveList.Size = new Size(100, 50);
            btnSaveList.TabIndex = 3;
            btnSaveList.Text = "Listeyi Kaydet";
            btnSaveList.UseVisualStyleBackColor = true;
            btnSaveList.Click += btnSaveList_Click;
            // 
            // MainForm
            // 
            AutoScaleDimensions = new SizeF(6F, 13F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(splitContainerMain);
            Name = "MainForm";
            Text = "Alışveriş Uygulaması - Ana Sayfa";
            Load += MainForm_Load;
            splitContainerMain.Panel1.ResumeLayout(false);
            splitContainerMain.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)splitContainerMain).EndInit();
            splitContainerMain.ResumeLayout(false);
            panelRightSide.ResumeLayout(false);
            ResumeLayout(false);
        }

        #endregion
    }
}
