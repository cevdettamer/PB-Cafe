namespace PB_Cafe
{
    partial class Mutfak
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.btn_hazir = new System.Windows.Forms.Button();
            this.btn_anaMenu = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(12, 38);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(616, 282);
            this.dataGridView1.TabIndex = 0;
            this.dataGridView1.CellEnter += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellEnter);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(13, 19);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(49, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Siparişler";
            // 
            // btn_hazir
            // 
            this.btn_hazir.Location = new System.Drawing.Point(239, 326);
            this.btn_hazir.Name = "btn_hazir";
            this.btn_hazir.Size = new System.Drawing.Size(75, 39);
            this.btn_hazir.TabIndex = 2;
            this.btn_hazir.Text = "Hazır";
            this.btn_hazir.UseVisualStyleBackColor = true;
            this.btn_hazir.Click += new System.EventHandler(this.btn_hazir_Click);
            // 
            // btn_anaMenu
            // 
            this.btn_anaMenu.Location = new System.Drawing.Point(333, 326);
            this.btn_anaMenu.Name = "btn_anaMenu";
            this.btn_anaMenu.Size = new System.Drawing.Size(75, 39);
            this.btn_anaMenu.TabIndex = 3;
            this.btn_anaMenu.Text = "Ana Menü";
            this.btn_anaMenu.UseVisualStyleBackColor = true;
            this.btn_anaMenu.Click += new System.EventHandler(this.btn_anaMenu_Click);
            // 
            // Mutfak
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(642, 382);
            this.Controls.Add(this.btn_anaMenu);
            this.Controls.Add(this.btn_hazir);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dataGridView1);
            this.Name = "Mutfak";
            this.Text = "Mutfak";
            this.Load += new System.EventHandler(this.Mutfak_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btn_hazir;
        private System.Windows.Forms.Button btn_anaMenu;
    }
}