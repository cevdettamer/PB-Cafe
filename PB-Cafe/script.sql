USE [PBCafe]
GO
/****** Object:  Table [dbo].[tbl_Adisyon]    Script Date: 29.04.2020 17:08:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Adisyon](
	[Id] [int] NOT NULL,
	[masaAd] [nchar](10) NULL,
	[yemekAd] [varchar](50) NULL,
	[yemekAdet] [nchar](10) NULL,
	[yemekFiyat] [nchar](10) NULL,
	[yemekMaliyet] [nchar](10) NULL,
	[kampanyaAd] [varchar](50) NULL,
	[kampanyaAdet] [nchar](10) NULL,
	[kampanyaFiyat] [nchar](10) NULL,
	[kampanyaMaliyet] [nchar](10) NULL,
	[toplamFiyat] [nchar](10) NULL,
	[tarih] [datetime] NULL,
 CONSTRAINT [PK__tbl_Adis__3214EC07F81E00E9] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Kampanya]    Script Date: 29.04.2020 17:08:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Kampanya](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[kampanyaAd] [varchar](50) NULL,
	[kampanyaBaslangic] [datetime] NULL,
	[kampanyaBitis] [datetime] NULL,
	[kampanyaFiyat] [varchar](50) NULL,
	[kampanyaMaliyet] [varchar](50) NULL,
	[kampanyaResim] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Kasa]    Script Date: 29.04.2020 17:08:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Kasa](
	[Id] [int] NOT NULL,
	[masaAd] [nchar](10) NULL,
	[yemekAd] [varchar](50) NULL,
	[yemekAdet] [nchar](10) NULL,
	[yemekFiyat] [nchar](10) NULL,
	[yemekMaliyet] [nchar](10) NULL,
	[kampanyaAd] [varchar](50) NULL,
	[kampanyaAdet] [nchar](10) NULL,
	[kampanyaFiyat] [nchar](10) NULL,
	[kampanyaMaliyet] [nchar](10) NULL,
	[toplamFiyat] [nchar](10) NULL,
	[tarih] [datetime] NULL,
 CONSTRAINT [PK__tmp_ms_x__3214EC0778B355BB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Kategori]    Script Date: 29.04.2020 17:08:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Kategori](
	[KategoriId] [tinyint] IDENTITY(1,1) NOT NULL,
	[kategoriAd] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[KategoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Kullanici]    Script Date: 29.04.2020 17:08:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Kullanici](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciAd] [nchar](10) NULL,
	[kullaniciSifre] [nchar](10) NULL,
	[kullaniciGorev] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Masa]    Script Date: 29.04.2020 17:08:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Masa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[masaAd] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Menu]    Script Date: 29.04.2020 17:08:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Menu](
	[YemekId] [int] IDENTITY(1,1) NOT NULL,
	[yemekAd] [varchar](50) NULL,
	[yemekKategori] [tinyint] NULL,
	[yemekFiyat] [varchar](50) NULL,
	[yemekMaliyet] [varchar](50) NULL,
	[yemekResim] [varchar](max) NULL,
 CONSTRAINT [PK__tmp_ms_x__3214EC0780F022FB] PRIMARY KEY CLUSTERED 
(
	[YemekId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Mutfak]    Script Date: 29.04.2020 17:08:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Mutfak](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[yemekAdi] [varchar](50) NULL,
	[yemekAdet] [nchar](10) NULL,
	[kampanya] [varchar](50) NULL,
	[kampanyaAdet] [nchar](10) NULL,
 CONSTRAINT [PK_tbl_Mutfak] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Personel]    Script Date: 29.04.2020 17:08:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Personel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[personelAd] [varchar](50) NULL,
	[personelSoyad] [varchar](50) NULL,
	[personelTelefon] [varchar](50) NULL,
	[personelMail] [varchar](50) NULL,
	[personelAdres] [varchar](50) NULL,
	[personelGorev] [varchar](50) NULL,
	[personelResim] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Rapor]    Script Date: 29.04.2020 17:08:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Rapor](
	[Id] [int] NOT NULL,
	[masaAd] [nchar](10) NULL,
	[yemekAd] [varchar](50) NULL,
	[yemekAdet] [nchar](10) NULL,
	[yemekFiyat] [nchar](10) NULL,
	[yemekMaliyet] [nchar](10) NULL,
	[kampanyaAd] [varchar](50) NULL,
	[kampanyaAdet] [nchar](10) NULL,
	[kampanyaFiyat] [nchar](10) NULL,
	[kampanyaMaliyet] [nchar](10) NULL,
	[toplamFiyat] [nchar](10) NULL,
	[tarih] [datetime] NULL,
 CONSTRAINT [PK__tmp_ms_x__3214EC078E4F2E01] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_silinenPersonel]    Script Date: 29.04.2020 17:08:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_silinenPersonel](
	[Id] [int] NOT NULL,
	[personelAd] [varchar](50) NULL,
	[personelSoyad] [varchar](50) NULL,
	[personelTelefon] [varchar](50) NULL,
	[personelMail] [varchar](50) NULL,
	[personelAdres] [varchar](50) NULL,
	[personelGorev] [varchar](50) NULL,
	[personelResim] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Siparis]    Script Date: 29.04.2020 17:08:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Siparis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[masaAd] [nchar](10) NULL,
	[yemekAd] [varchar](50) NULL,
	[yemekAdet] [nchar](10) NULL,
	[yemekFiyat] [nchar](10) NULL,
	[yemekMaliyet] [nchar](10) NULL,
	[kampanyaAd] [varchar](50) NULL,
	[kampanyaAdet] [nchar](10) NULL,
	[kampanyaFiyat] [nchar](10) NULL,
	[kampanyaMaliyet] [nchar](10) NULL,
	[toplamFiyat] [nchar](10) NULL,
	[tarih] [datetime] NULL,
 CONSTRAINT [PK__tbl_Sipa__3214EC077FF50567] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_Menu]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Menu_tbl_Kategori1] FOREIGN KEY([yemekKategori])
REFERENCES [dbo].[tbl_Kategori] ([KategoriId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tbl_Menu] CHECK CONSTRAINT [FK_tbl_Menu_tbl_Kategori1]
GO


/****** Object:  Trigger [dbo].[tr_silinenAdisyon]    Script Date: 29.04.2020 20:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Trigger [dbo].[tr_silinenAdisyon] on [dbo].[tbl_Adisyon]

After Delete
As
Begin
Declare @Id int
Declare	@masaAd varchar(50)
Declare	@yemekAd varchar(50)
Declare	@yemekAdet nchar(10)
Declare	@yemekFiyat nchar(10)
Declare	@yemekMaliyet nchar(10)
Declare	@kampanyaAd varchar(50)
Declare	@kampanyaAdet nchar(10)
Declare	@kampanyaFiyat nchar(10)
Declare	@kampanyaMaliyet nchar(10)
Declare @toplamFiyat nchar(10)
Declare @tarih datetime
Select @Id=Id from deleted
Select @masaAd=masaAd from deleted
Select @yemekAd=yemekAd from deleted
Select @yemekAdet=yemekAdet from deleted
Select @yemekFiyat=yemekFiyat from deleted
Select @yemekMaliyet=yemekMaliyet from deleted
Select @kampanyaAd=kampanyaAd from deleted
Select @kampanyaAdet=kampanyaAdet from deleted
Select @kampanyaFiyat=kampanyaFiyat from deleted
Select @kampanyaMaliyet=kampanyaMaliyet from deleted
Select @toplamFiyat=toplamFiyat from deleted
Select @tarih=tarih from deleted
Insert into tbl_Kasa values (@Id, @masaAd, @yemekAd, @yemekAdet, @yemekFiyat, @yemekMaliyet, @kampanyaAd, @kampanyaAdet, @kampanyaFiyat, @kampanyaMaliyet, @toplamFiyat, @tarih)
End


/****** Object:  Trigger [dbo].[tr_silinenKasa]    Script Date: 29.04.2020 20:32:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Trigger [dbo].[tr_silinenKasa] on [dbo].[tbl_Kasa]

After Delete
As
Begin
Declare @Id int
Declare	@masaAd varchar(50)
Declare	@yemekAd varchar(50)
Declare	@yemekAdet nchar(10)
Declare	@yemekFiyat nchar(10)
Declare	@yemekMaliyet nchar(10)
Declare	@kampanyaAd varchar(50)
Declare	@kampanyaAdet nchar(10)
Declare	@kampanyaFiyat nchar(10)
Declare	@kampanyaMaliyet nchar(10)
Declare @toplamFiyat nchar(10)
Declare @tarih datetime
Select @Id=Id from deleted
Select @masaAd=masaAd from deleted
Select @yemekAd=yemekAd from deleted
Select @yemekAdet=yemekAdet from deleted
Select @yemekFiyat=yemekFiyat from deleted
Select @yemekMaliyet=yemekMaliyet from deleted
Select @kampanyaAd=kampanyaAd from deleted
Select @kampanyaAdet=kampanyaAdet from deleted
Select @kampanyaFiyat=kampanyaFiyat from deleted
Select @kampanyaMaliyet=kampanyaMaliyet from deleted
Select @toplamFiyat=toplamFiyat from deleted
Select @tarih=tarih from deleted
Insert into tbl_Rapor values (@Id, @masaAd, @yemekAd, @yemekAdet, @yemekFiyat, @yemekMaliyet, @kampanyaAd, @kampanyaAdet, @kampanyaFiyat, @kampanyaMaliyet, @toplamFiyat, @tarih)
End


/****** Object:  Trigger [dbo].[tr_silinen]    Script Date: 29.04.2020 20:33:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Trigger [dbo].[tr_silinen] on [dbo].[tbl_Personel]

After Delete
As
Begin
Declare @Id int
Declare	@personelAd varchar(50)
Declare	@personelSoyad varchar(50)
Declare	@personelTelefon varchar(50)
Declare	@personelMail varchar(50)
Declare	@personelAdres varchar(50)
Declare	@personelGorev varchar(50)
Declare	@personelResim varchar(50)
Select @Id=Id from deleted
Select @personelAd=personelAd from deleted
Select @personelSoyad=personelSoyad from deleted
Select @personelTelefon=personelTelefon from deleted
Select @personelMail=personelMail from deleted
Select @personelAdres=personelAdres from deleted
Select @personelGorev=personelGorev from deleted
Select @personelResim=personelResim from deleted
Insert into tbl_silinenPersonel values (@Id, @personelAd, @personelSoyad, @personelTelefon, @personelMail, @personelAdres, @personelGorev, @personelResim)
End


/****** Object:  Trigger [dbo].[tr_silinenSiparis]    Script Date: 29.04.2020 20:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Trigger [dbo].[tr_silinenSiparis] on [dbo].[tbl_Siparis]

After Delete
As
Begin
Declare @Id int
Declare	@masaAd varchar(50)
Declare	@yemekAd varchar(50)
Declare	@yemekAdet nchar(10)
Declare	@yemekFiyat nchar(10)
Declare	@yemekMaliyet nchar(10)
Declare	@kampanyaAd varchar(50)
Declare	@kampanyaAdet nchar(10)
Declare	@kampanyaFiyat nchar(10)
Declare	@kampanyaMaliyet nchar(10)
Declare @toplamFiyat nchar(10)
Declare @tarih datetime
Select @Id=Id from deleted
Select @masaAd=masaAd from deleted
Select @yemekAd=yemekAd from deleted
Select @yemekAdet=yemekAdet from deleted
Select @yemekFiyat=yemekFiyat from deleted
Select @yemekMaliyet=yemekMaliyet from deleted
Select @kampanyaAd=kampanyaAd from deleted
Select @kampanyaAdet=kampanyaAdet from deleted
Select @kampanyaFiyat=kampanyaFiyat from deleted
Select @kampanyaMaliyet=kampanyaMaliyet from deleted
Select @toplamFiyat=toplamFiyat from deleted
Select @tarih=tarih from deleted
Insert into tbl_Adisyon values (@Id, @masaAd, @yemekAd, @yemekAdet, @yemekFiyat, @yemekMaliyet, @kampanyaAd, @kampanyaAdet, @kampanyaFiyat, @kampanyaMaliyet, @toplamFiyat, @tarih)
End
