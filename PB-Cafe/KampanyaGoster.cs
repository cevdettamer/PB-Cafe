using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Configuration;
using System.Data.SqlClient;
namespace PB_Cafe
{
    public partial class KampanyaGoster : Form
    {
        string connectionString = ConfigurationManager.ConnectionStrings["PBCafe"].ConnectionString;
        SqlConnection baglanti;
        SqlDataAdapter da;
        public KampanyaGoster()
        {
            InitializeComponent();
        }
        public void getir()
        {
            string sorgu = "Select Id, kampanyaAd, kampanyaBaslangic, kampanyaBitis, kampanyaFiyat, kampanyaResim From tbl_Kampanya";
            baglanti = new SqlConnection(connectionString);
            baglanti.Open();
            da = new SqlDataAdapter(sorgu, baglanti);
            DataTable tablo = new DataTable();
            da.Fill(tablo);
            dataGridView1.DataSource = tablo;
            baglanti.Close();
        }

        private void KampanyaGoster_Load(object sender, EventArgs e)
        {
            getir();
        }

        private void dataGridView1_CellEnter(object sender, DataGridViewCellEventArgs e)
        {
            pictureBox1.ImageLocation = dataGridView1.CurrentRow.Cells[5].Value.ToString();
        }
    }
}
