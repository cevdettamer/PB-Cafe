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
    public partial class SiparisAl : Form
    {
        string connectionString = ConfigurationManager.ConnectionStrings["PBCafe"].ConnectionString;
        SqlConnection baglanti;
        SqlDataAdapter da;
        public SiparisAl()
        {
            InitializeComponent();
        }
        public void getir()
        {
            string sorgu = "Select * From tbl_Siparis";
            baglanti = new SqlConnection(connectionString);
            baglanti.Open();
            da = new SqlDataAdapter(sorgu, baglanti);
            DataTable tablo = new DataTable();
            da.Fill(tablo);
            dataGridView1.DataSource = tablo;
            baglanti.Close();
        }

        public void masa_doldur()
        {
            //masalar
            baglanti = new SqlConnection(connectionString);
            SqlCommand cmd_masa = new SqlCommand();
            cmd_masa.CommandText = "SELECT *FROM tbl_Masa";
            cmd_masa.Connection = baglanti;
            cmd_masa.CommandType = CommandType.Text;
            SqlDataReader dr_masa;
            baglanti.Open();
            dr_masa = cmd_masa.ExecuteReader();
            while (dr_masa.Read())
            {
                cb_masaAd.Items.Add(dr_masa["masaAd"]);
            }
            baglanti.Close();
        }

        public void kampanyaDoldur()
        {
            //kampanyalar
            SqlCommand cmd_kmp = new SqlCommand();
            cmd_kmp.CommandText = "SELECT kampanyaAd, kampanyaFiyat, kampanyaMaliyet FROM tbl_Kampanya";
            cmd_kmp.Connection = baglanti;
            cmd_kmp.CommandType = CommandType.Text;
            SqlDataReader dr_kmp;
            baglanti.Open();
            dr_kmp = cmd_kmp.ExecuteReader();
            while (dr_kmp.Read())
            {
                cb_kampanya.Items.Add(dr_kmp["kampanyaAd"]);
                lb_kampanyaFiyat.Text = dr_kmp["kampanyaFiyat"].ToString();
                lb_kampanyaMaliyet.Text = dr_kmp["kampanyaMaliyet"].ToString();
            }
            baglanti.Close();
        }

        private void SiparisAl_Load(object sender, EventArgs e)
        {
            getir();
            masa_doldur();
            kampanyaDoldur();
            kategoriDoldur();
        }

        private void btn_ekle_Click(object sender, EventArgs e)
        {
            //sipariş eklendiği zaman siparis tablosuna ve mutfak tablosuna eklenecek.
            DateTime tarih = DateTime.Now;
            int toplam = Convert.ToInt32(lb_yemekFiyat.Text) * Convert.ToInt32(nud_yemekAdet.Value) + Convert.ToInt32(lb_kampanyaFiyat.Text) * Convert.ToInt32(nud_kampanyaAdet.Value);
            using (SqlCommand cmd = new SqlCommand())
            {
                string sql = "insert into tbl_Siparis (masaAd, yemekAd, yemekAdet, yemekFiyat, yemekMaliyet," +
                    " kampanyaAd, kampanyaAdet, kampanyaFiyat, kampanyaMaliyet, toplamFiyat, tarih)";
                sql += "values(@masaAd, @yemekAd, @yemekAdet, @yemekFiyat, @yemekMaliyet, @kampanyaAd, @kampanyaAdet, @kampanyaFiyat, @kampanyaMaliyet, @toplamFiyat, @tarih)";
                cmd.CommandText = sql;
                cmd.Parameters.AddWithValue("@masaAd", cb_masaAd.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@yemekAd", cb_yemek.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@yemekAdet", nud_yemekAdet.Value.ToString());
                cmd.Parameters.AddWithValue("@yemekFiyat", lb_yemekFiyat.Text);
                cmd.Parameters.AddWithValue("@yemekMaliyet", lb_yemekMaliyet.Text);
                cmd.Parameters.AddWithValue("@kampanyaAd", cb_kampanya.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@kampanyaAdet", nud_kampanyaAdet.Value.ToString());
                cmd.Parameters.AddWithValue("@kampanyaFiyat", lb_kampanyaFiyat.Text);
                cmd.Parameters.AddWithValue("@kampanyaMaliyet", lb_kampanyaMaliyet.Text);
                cmd.Parameters.AddWithValue("@toplamFiyat", toplam.ToString());
                cmd.Parameters.AddWithValue("@tarih", (tarih));
                cmd.Connection = baglanti;
                baglanti.Open();
                cmd.ExecuteNonQuery();
                baglanti.Close();
                getir();
            }
        }

        private void btn_iptal_Click(object sender, EventArgs e)
        {
            foreach (Control item in this.Controls)
            {
                if (item is ComboBox)
                {
                    ((ComboBox)item).Text = "";
                }
                if (item is DomainUpDown)
                {
                    ((DomainUpDown)item).Text = "";
                }
            }
        }

        public void kategoriDoldur()
        {
            baglanti.Open();
            string sorgu = "Select kategoriAd From tbl_Kategori";
            SqlCommand cmd = new SqlCommand(sorgu, baglanti);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                cb_kategori.Items.Add(dr[0]);
            }
            baglanti.Close();
        }

        private void cb_kategori_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Seçilen kategoriye göre yemekler listelenecek.
            cb_yemek.Items.Clear();
            baglanti.Open();
            string sorgu = "Select yemekAd, yemekFiyat, yemekMaliyet From tbl_Menu Where yemekKategori=@p1";
            SqlCommand cmd = new SqlCommand(sorgu, baglanti);
            cmd.Parameters.AddWithValue("@p1", cb_kategori.SelectedIndex + 1);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                cb_yemek.Items.Add(dr["yemekAd"]);
                lb_yemekFiyat.Text = dr["yemekFiyat"].ToString();
                lb_yemekMaliyet.Text = dr["yemekMaliyet"].ToString();
            }
            baglanti.Close();
        }
    }
}
