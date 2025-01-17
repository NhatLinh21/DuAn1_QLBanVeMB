CREATE DATABASE Duanmaybay1
GO
USE [Duanmaybay1]
GO
/****** Object:  Table [dbo].[ChiTietChuyenBay]    Script Date: 18-Jun-21 6:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietChuyenBay](
	[MaChiTietChuyenBay] [nvarchar](50) NOT NULL,
	[HangBay] [nvarchar](50) NULL,
	[SoHieu] [nvarchar](50) NULL,
 CONSTRAINT [PK_CHITIETCHUYENBAY] PRIMARY KEY CLUSTERED 
(
	[MaChiTietChuyenBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenBay]    Script Date: 18-Jun-21 6:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenBay](
	[MaChuyenBay] [nvarchar](50) NOT NULL,
	[NgayGio] [date] NULL,
	[ThoiGianBay] [time](0) NULL,
	[SoGheTrong] [int] NULL,
	[MaTuyenBay] [nchar](10) NULL,
	[MaChiTietChuyenBay] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_CHUYENBAY] PRIMARY KEY CLUSTERED 
(
	[MaChuyenBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangVe]    Script Date: 18-Jun-21 6:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangVe](
	[MaHangVe] [nvarchar](50) NOT NULL,
	[TenHangVe] [nvarchar](50) NULL,
	[MaVe] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_HANGVE] PRIMARY KEY CLUSTERED 
(
	[MaHangVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 18-Jun-21 6:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nchar](10) NOT NULL,
	[NgayLap] [date] NULL,
	[ThanhTien] [int] NULL,
	[CMND] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 18-Jun-21 6:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[CMND] [nvarchar](50) NOT NULL,
	[TENKH] [nvarchar](50) NOT NULL,
	[SDT] [nchar](10) NOT NULL,
	[GIOITINH] [int] NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](128) NULL,
	[VaiTro] [int] NULL,
	[TrangThai] [int] NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[CMND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MayBay]    Script Date: 18-Jun-21 6:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MayBay](
	[MaMayBay] [nchar](10) NOT NULL,
	[TenMayBay] [nchar](10) NOT NULL,
	[MaChuyenBay] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MAYBAY] PRIMARY KEY CLUSTERED 
(
	[MaMayBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MuaVe]    Script Date: 18-Jun-21 6:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MuaVe](
	[CMND] [nvarchar](50) NOT NULL,
	[MaVe] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MUAVE] PRIMARY KEY CLUSTERED 
(
	[CMND] ASC,
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatCho]    Script Date: 18-Jun-21 6:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatCho](
	[MaPhieu] [nvarchar](50) NOT NULL,
	[NgayDat] [date] NOT NULL,
	[SoGhe] [nvarchar](50) NOT NULL,
	[CMND] [nvarchar](50) NOT NULL,
	[MaHangVe] [nvarchar](50) NOT NULL,
	[MaChuyenBay] [nvarchar](50) NOT NULL,
	[TongTien] [int] NULL,
	[Thue] [int] NULL,
 CONSTRAINT [PK_PHIEUDATCHO] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanBay]    Script Date: 18-Jun-21 6:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanBay](
	[MaSanBay] [nvarchar](50) NOT NULL,
	[TenSanBay] [nvarchar](50) NULL,
	[TinhThanh] [nvarchar](50) NULL,
 CONSTRAINT [PK_SANBAY] PRIMARY KEY CLUSTERED 
(
	[MaSanBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TuyenBay]    Script Date: 18-Jun-21 6:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TuyenBay](
	[MaTuyenBay] [nchar](10) NOT NULL,
	[SanBayDi] [nvarchar](50) NULL,
	[SanBayDen] [nvarchar](50) NULL,
	[MaSanBay] [nvarchar](50) NULL,
	[Chieudai] [int] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_TUYENBAY] PRIMARY KEY CLUSTERED 
(
	[MaTuyenBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VeChuyenBay]    Script Date: 18-Jun-21 6:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VeChuyenBay](
	[MaVe] [nvarchar](50) NOT NULL,
	[TinhTrangVe] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_VECHUYENBAY] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietChuyenBay] ([MaChiTietChuyenBay], [HangBay], [SoHieu]) VALUES (N'CT_01', N'BAMBO', N'VN_HIHI')
INSERT [dbo].[ChiTietChuyenBay] ([MaChiTietChuyenBay], [HangBay], [SoHieu]) VALUES (N'CT_02', N'VN_AIRLINE', N'VN_HAHA')
INSERT [dbo].[ChiTietChuyenBay] ([MaChiTietChuyenBay], [HangBay], [SoHieu]) VALUES (N'CT_03', N'VIETJET', N'VN_HUHU')
INSERT [dbo].[ChiTietChuyenBay] ([MaChiTietChuyenBay], [HangBay], [SoHieu]) VALUES (N'CT_04', N'JETSTAR', N'VN_HEHE')
GO
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [NgayGio], [ThoiGianBay], [SoGheTrong], [MaTuyenBay], [MaChiTietChuyenBay], [TrangThai]) VALUES (N'VN01      ', CAST(N'2021-04-13' AS Date), CAST(N'17:50:22' AS Time), 60, N'N01       ', N'CT_01', 0)
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [NgayGio], [ThoiGianBay], [SoGheTrong], [MaTuyenBay], [MaChiTietChuyenBay], [TrangThai]) VALUES (N'VN02      ', CAST(N'2021-05-13' AS Date), CAST(N'17:20:23' AS Time), 60, N'N02       ', N'CT_02', 0)
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [NgayGio], [ThoiGianBay], [SoGheTrong], [MaTuyenBay], [MaChiTietChuyenBay], [TrangThai]) VALUES (N'VN03      ', CAST(N'2021-05-17' AS Date), CAST(N'17:20:25' AS Time), 60, N'N04       ', N'CT_04', 0)
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [NgayGio], [ThoiGianBay], [SoGheTrong], [MaTuyenBay], [MaChiTietChuyenBay], [TrangThai]) VALUES (N'VN04      ', CAST(N'2021-05-15' AS Date), CAST(N'17:20:30' AS Time), 60, N'N03       ', N'CT_03', 0)
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [NgayGio], [ThoiGianBay], [SoGheTrong], [MaTuyenBay], [MaChiTietChuyenBay], [TrangThai]) VALUES (N'VN05', CAST(N'2021-05-15' AS Date), CAST(N'19:30:00' AS Time), 58, N'N04       ', N'CT_04', 0)
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [NgayGio], [ThoiGianBay], [SoGheTrong], [MaTuyenBay], [MaChiTietChuyenBay], [TrangThai]) VALUES (N'VN07', CAST(N'2021-05-15' AS Date), CAST(N'22:10:00' AS Time), 60, N'N04       ', N'CT_04', 0)
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [NgayGio], [ThoiGianBay], [SoGheTrong], [MaTuyenBay], [MaChiTietChuyenBay], [TrangThai]) VALUES (N'VN08', CAST(N'2021-05-15' AS Date), CAST(N'23:20:15' AS Time), 60, N'N04       ', N'CT_04', 0)
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [NgayGio], [ThoiGianBay], [SoGheTrong], [MaTuyenBay], [MaChiTietChuyenBay], [TrangThai]) VALUES (N'VN26', CAST(N'2021-04-17' AS Date), CAST(N'19:20:30' AS Time), 60, N'N01       ', N'CT_02', 0)
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [NgayGio], [ThoiGianBay], [SoGheTrong], [MaTuyenBay], [MaChiTietChuyenBay], [TrangThai]) VALUES (N'VN30', CAST(N'2021-05-13' AS Date), CAST(N'19:20:00' AS Time), 60, N'N05       ', N'CT_02', 0)
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [NgayGio], [ThoiGianBay], [SoGheTrong], [MaTuyenBay], [MaChiTietChuyenBay], [TrangThai]) VALUES (N'VN53', CAST(N'2021-04-20' AS Date), CAST(N'16:00:00' AS Time), 60, N'N37       ', N'CT_01', 0)
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [NgayGio], [ThoiGianBay], [SoGheTrong], [MaTuyenBay], [MaChiTietChuyenBay], [TrangThai]) VALUES (N'VN75', CAST(N'2021-05-14' AS Date), CAST(N'17:30:00' AS Time), 60, N'N02       ', N'CT_02', 0)
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [NgayGio], [ThoiGianBay], [SoGheTrong], [MaTuyenBay], [MaChiTietChuyenBay], [TrangThai]) VALUES (N'VN94', CAST(N'2021-04-19' AS Date), CAST(N'16:00:00' AS Time), 60, N'N01       ', N'CT_01', 0)
GO
INSERT [dbo].[HangVe] ([MaHangVe], [TenHangVe], [MaVe]) VALUES (N'N01', N'Hạng Sang', N'N01')
INSERT [dbo].[HangVe] ([MaHangVe], [TenHangVe], [MaVe]) VALUES (N'N02', N'Hạng Thường', N'N02')
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [ThanhTien], [CMND], [TrangThai]) VALUES (N'HD01      ', CAST(N'2021-06-02' AS Date), 0, N'1235', 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [ThanhTien], [CMND], [TrangThai]) VALUES (N'HD30      ', CAST(N'2021-06-10' AS Date), 0, N'1235', 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [ThanhTien], [CMND], [TrangThai]) VALUES (N'HD67      ', CAST(N'2021-06-09' AS Date), 0, N'04420003153', 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [ThanhTien], [CMND], [TrangThai]) VALUES (N'HD89      ', CAST(N'2021-06-02' AS Date), 0, N'1014', 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [ThanhTien], [CMND], [TrangThai]) VALUES (N'HD93      ', CAST(N'2021-06-07' AS Date), 0, N'1014', 1)
GO
INSERT [dbo].[KhachHang] ([CMND], [TENKH], [SDT], [GIOITINH], [Username], [Password], [VaiTro], [TrangThai], [Email]) VALUES (N'01230', N'Dương Công Sáng', N'0123456789', 1, N'sang123', N'$2a$04$D5kssYkAePffenOi51iK6.AmSIh2.FpRo/q4JfNM7RF/hRbSxczNG', 0, 0, N'duongcongsang2000@gmail.com')
INSERT [dbo].[KhachHang] ([CMND], [TENKH], [SDT], [GIOITINH], [Username], [Password], [VaiTro], [TrangThai], [Email]) VALUES (N'04420003152', N'Dương Công Sáng', N'0979336861', 1, N'sang2k1', N'$2a$04$D5kssYkAePffenOi51iK6.AmSIh2.FpRo/q4JfNM7RF/hRbSxczNG', 0, 0, N'niemvuicuaem2000@gmail.com')
INSERT [dbo].[KhachHang] ([CMND], [TENKH], [SDT], [GIOITINH], [Username], [Password], [VaiTro], [TrangThai], [Email]) VALUES (N'04420003153', N'Phạm Ngọc Hưng', N'0979336861', 1, N'hung2k', N'$2a$04$eqc77kQTorgIWbKAMqeBFuN8KfTDURKYUTWeklW60tec3G/v2K7T.', 0, 0, N'phamngochung2000@gmail.com')
INSERT [dbo].[KhachHang] ([CMND], [TENKH], [SDT], [GIOITINH], [Username], [Password], [VaiTro], [TrangThai], [Email]) VALUES (N'04420003154', N'Võ Thành Nam', N'0932486937', 1, N'nam2k', N'$2a$04$6Rg.x5F/h.EL1nOk32Mq/eE9xIzjoqfJaqmxxjFh3IY4rpm/g7yFC', 0, 0, N'vothanhnam2000@gmail.com')
INSERT [dbo].[KhachHang] ([CMND], [TENKH], [SDT], [GIOITINH], [Username], [Password], [VaiTro], [TrangThai], [Email]) VALUES (N'100012', N'Dương Công Sáng', N'0932486937', 1, N'Sang2k', N'$2a$04$D5kssYkAePffenOi51iK6.AmSIh2.FpRo/q4JfNM7RF/hRbSxczNG', 1, 0, N'duongcongsang2000@gmail.com')
INSERT [dbo].[KhachHang] ([CMND], [TENKH], [SDT], [GIOITINH], [Username], [Password], [VaiTro], [TrangThai], [Email]) VALUES (N'1014', N'Nguyễn Gia Liêm', N'0123456788', 1, N'liem2k', N'$2a$04$6Qls1lfnki0KQLYTTX4nt.KsNTJDO91MnjrK1iYkKxfx2ClijL5rK', 0, 0, N'nguyengialiem2000@gmail.com')
INSERT [dbo].[KhachHang] ([CMND], [TENKH], [SDT], [GIOITINH], [Username], [Password], [VaiTro], [TrangThai], [Email]) VALUES (N'1235', N'Huỳnh Tiến Vĩ', N'0898616934', 1, N'Vi4k', N'$2a$04$feU1PLwyz8PmBdwjRIo6ZOee6XiMdPhi3QvuBNZ4/CFI/s873mgcu', 0, 0, N'huynhtienvi2000@gmail.com')
GO
INSERT [dbo].[PhieuDatCho] ([MaPhieu], [NgayDat], [SoGhe], [CMND], [MaHangVe], [MaChuyenBay], [TongTien], [Thue]) VALUES (N'VN1', CAST(N'2021-06-02' AS Date), N'D3', N'1235', N'N02', N'VN07', 44000000, 4000000)
INSERT [dbo].[PhieuDatCho] ([MaPhieu], [NgayDat], [SoGhe], [CMND], [MaHangVe], [MaChuyenBay], [TongTien], [Thue]) VALUES (N'VN10', CAST(N'2021-06-10' AS Date), N'F4', N'1235', N'N01', N'VN03      ', 27500000, 2500000)
INSERT [dbo].[PhieuDatCho] ([MaPhieu], [NgayDat], [SoGhe], [CMND], [MaHangVe], [MaChuyenBay], [TongTien], [Thue]) VALUES (N'VN11', CAST(N'2021-06-10' AS Date), N'D4', N'1235', N'N01', N'VN08', 27500000, 2500000)
INSERT [dbo].[PhieuDatCho] ([MaPhieu], [NgayDat], [SoGhe], [CMND], [MaHangVe], [MaChuyenBay], [TongTien], [Thue]) VALUES (N'VN2', CAST(N'2021-06-02' AS Date), N'E4', N'1235', N'N01', N'VN08', 22000000, 2000000)
INSERT [dbo].[PhieuDatCho] ([MaPhieu], [NgayDat], [SoGhe], [CMND], [MaHangVe], [MaChuyenBay], [TongTien], [Thue]) VALUES (N'VN3', CAST(N'2021-06-02' AS Date), N'E4', N'1014', N'N01', N'VN07', 22000000, 2000000)
INSERT [dbo].[PhieuDatCho] ([MaPhieu], [NgayDat], [SoGhe], [CMND], [MaHangVe], [MaChuyenBay], [TongTien], [Thue]) VALUES (N'VN4', CAST(N'2021-06-07' AS Date), N'C8', N'1014', N'N01', N'VN01      ', 27500000, 2500000)
INSERT [dbo].[PhieuDatCho] ([MaPhieu], [NgayDat], [SoGhe], [CMND], [MaHangVe], [MaChuyenBay], [TongTien], [Thue]) VALUES (N'VN5', CAST(N'2021-06-07' AS Date), N'B4', N'1014', N'N01', N'VN30', 27500000, 2500000)
INSERT [dbo].[PhieuDatCho] ([MaPhieu], [NgayDat], [SoGhe], [CMND], [MaHangVe], [MaChuyenBay], [TongTien], [Thue]) VALUES (N'VN6', CAST(N'2021-06-09' AS Date), N'C4', N'04420003153', N'N01', N'VN02      ', 16500000, 1500000)
INSERT [dbo].[PhieuDatCho] ([MaPhieu], [NgayDat], [SoGhe], [CMND], [MaHangVe], [MaChuyenBay], [TongTien], [Thue]) VALUES (N'VN7', CAST(N'2021-06-09' AS Date), N'E4', N'04420003153', N'N01', N'VN02      ', 16500000, 1500000)
INSERT [dbo].[PhieuDatCho] ([MaPhieu], [NgayDat], [SoGhe], [CMND], [MaHangVe], [MaChuyenBay], [TongTien], [Thue]) VALUES (N'VN8', CAST(N'2021-06-10' AS Date), N'D3', N'1235', N'N02', N'VN03      ', 55000000, 5000000)
INSERT [dbo].[PhieuDatCho] ([MaPhieu], [NgayDat], [SoGhe], [CMND], [MaHangVe], [MaChuyenBay], [TongTien], [Thue]) VALUES (N'VN9', CAST(N'2021-06-10' AS Date), N'C4', N'1235', N'N01', N'VN03      ', 27500000, 2500000)
GO
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [TinhThanh]) VALUES (N'VN_01     ', N'Sân Bay Quốc Tế Vinh', N'Nghệ An')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [TinhThanh]) VALUES (N'VN_02     ', N'Sân Bay Đồng Hới', N'Quảng Bình')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [TinhThanh]) VALUES (N'VN_03     ', N'Sân Bay Cát Bi', N'Hải Phòng')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [TinhThanh]) VALUES (N'VN_04     ', N'Sân Bay Điện Biên Phủ', N'Điện Biên')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [TinhThanh]) VALUES (N'VN_05', N'Sân Bay Quốc Tế Phú Bài', N'Huế')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [TinhThanh]) VALUES (N'VN_06     ', N'Sân Bay Quốc Tế Đà Nẵng', N'Đà Nẵng')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [TinhThanh]) VALUES (N'VN_07', N'Sân Bay Chu Lai', N'Quảng Nam')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [TinhThanh]) VALUES (N'VN_08', N'Sân Bay Phù Cát', N'Bình Định')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [TinhThanh]) VALUES (N'VN_09', N'Sân Bay Tân Sơn Nhất', N'TP HCM')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [TinhThanh]) VALUES (N'VN_10', N'Sân Bay Cà Mau', N'Cà Mau')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [TinhThanh]) VALUES (N'VN_11', N'Sân Bay Vân Đồn', N'Quảng Ninh')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [TinhThanh]) VALUES (N'VN_12', N'Sân Bay Phú Quốc ', N'Kiên Giang')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [TinhThanh]) VALUES (N'VN_13', N'Sân Bay Tuy Hòa', N'Phú Yên')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [TinhThanh]) VALUES (N'VN_14', N'Sân Bay Nha Trang', N'Nha Trang')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [TinhThanh]) VALUES (N'VN_15', N'Sân Bay Nội Bài', N'Hà Nội')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [TinhThanh]) VALUES (N'VN_16', N'Sân Bay Hải Phòng', N'Hải Phòng')
GO
INSERT [dbo].[TuyenBay] ([MaTuyenBay], [SanBayDi], [SanBayDen], [MaSanBay], [Chieudai], [TrangThai]) VALUES (N'N01       ', N'Nghệ An ', N'Hà Nội', N'VN_01     ', 5000, 0)
INSERT [dbo].[TuyenBay] ([MaTuyenBay], [SanBayDi], [SanBayDen], [MaSanBay], [Chieudai], [TrangThai]) VALUES (N'N02       ', N'Quảng Bình', N'Nha Trang', N'VN_02     ', 3000, 0)
INSERT [dbo].[TuyenBay] ([MaTuyenBay], [SanBayDi], [SanBayDen], [MaSanBay], [Chieudai], [TrangThai]) VALUES (N'N03       ', N'Nha Trang', N'Quảng Bình', N'VN_14    ', 3000, 0)
INSERT [dbo].[TuyenBay] ([MaTuyenBay], [SanBayDi], [SanBayDen], [MaSanBay], [Chieudai], [TrangThai]) VALUES (N'N04       ', N'Nha Trang', N'Đà Nẵng', N'VN_14', 5000, 0)
INSERT [dbo].[TuyenBay] ([MaTuyenBay], [SanBayDi], [SanBayDen], [MaSanBay], [Chieudai], [TrangThai]) VALUES (N'N05       ', N'Đà Nẵng', N'Nha Trang', N'VN_06', 5000, 0)
INSERT [dbo].[TuyenBay] ([MaTuyenBay], [SanBayDi], [SanBayDen], [MaSanBay], [Chieudai], [TrangThai]) VALUES (N'N07       ', N'Cà Mau', N'Nghệ An', N'VN_10', 6000, 0)
INSERT [dbo].[TuyenBay] ([MaTuyenBay], [SanBayDi], [SanBayDen], [MaSanBay], [Chieudai], [TrangThai]) VALUES (N'N08       ', N'Phú Yên', N'TP HCM', N'VN_13', 6520, 0)
INSERT [dbo].[TuyenBay] ([MaTuyenBay], [SanBayDi], [SanBayDen], [MaSanBay], [Chieudai], [TrangThai]) VALUES (N'N09       ', N'Bình Định', N'Nghệ An', N'VN_08', 1020, 0)
INSERT [dbo].[TuyenBay] ([MaTuyenBay], [SanBayDi], [SanBayDen], [MaSanBay], [Chieudai], [TrangThai]) VALUES (N'N10       ', N'Hà Nội', N'Nghệ An', N'VN_15', 1220, 0)
INSERT [dbo].[TuyenBay] ([MaTuyenBay], [SanBayDi], [SanBayDen], [MaSanBay], [Chieudai], [TrangThai]) VALUES (N'N11       ', N'TP HCM', N'Quảng Bình', N'VN_09', 1400, 0)
INSERT [dbo].[TuyenBay] ([MaTuyenBay], [SanBayDi], [SanBayDen], [MaSanBay], [Chieudai], [TrangThai]) VALUES (N'N20       ', N'Quảng Bình', N'Quảng Bình', N'VN_02     ', 2000, 1)
INSERT [dbo].[TuyenBay] ([MaTuyenBay], [SanBayDi], [SanBayDen], [MaSanBay], [Chieudai], [TrangThai]) VALUES (N'N22       ', N'Điện Biên', N'Huế', N'VN_04     ', 2100, 0)
INSERT [dbo].[TuyenBay] ([MaTuyenBay], [SanBayDi], [SanBayDen], [MaSanBay], [Chieudai], [TrangThai]) VALUES (N'N23       ', N'Quảng Bình', N'Kiên Giang', N'VN_02     ', 1530, 0)
INSERT [dbo].[TuyenBay] ([MaTuyenBay], [SanBayDi], [SanBayDen], [MaSanBay], [Chieudai], [TrangThai]) VALUES (N'N32       ', N'Nha Trang', N'Quảng Bình', N'VN_14', 3000, 1)
INSERT [dbo].[TuyenBay] ([MaTuyenBay], [SanBayDi], [SanBayDen], [MaSanBay], [Chieudai], [TrangThai]) VALUES (N'N37       ', N'Hải Phòng', N'Điện Biên', N'VN_03     ', 2120, 0)
INSERT [dbo].[TuyenBay] ([MaTuyenBay], [SanBayDi], [SanBayDen], [MaSanBay], [Chieudai], [TrangThai]) VALUES (N'N39       ', N'Quảng Bình', N'Quảng Nam', N'VN_02     ', 2000, 0)
INSERT [dbo].[TuyenBay] ([MaTuyenBay], [SanBayDi], [SanBayDen], [MaSanBay], [Chieudai], [TrangThai]) VALUES (N'N55       ', N'Quảng Bình', N'Hải Phòng', N'VN_02     ', 1200, 0)
INSERT [dbo].[TuyenBay] ([MaTuyenBay], [SanBayDi], [SanBayDen], [MaSanBay], [Chieudai], [TrangThai]) VALUES (N'N63       ', N'Đà Nẵng', N'Điện Biên', N'VN_06     ', 1200, 1)
INSERT [dbo].[TuyenBay] ([MaTuyenBay], [SanBayDi], [SanBayDen], [MaSanBay], [Chieudai], [TrangThai]) VALUES (N'N78       ', N'Đà Nẵng', N'Điện Biên', N'VN_06     ', 1200, 0)
INSERT [dbo].[TuyenBay] ([MaTuyenBay], [SanBayDi], [SanBayDen], [MaSanBay], [Chieudai], [TrangThai]) VALUES (N'N92       ', N'Huế', N'Quảng Nam', N'VN_05', 1512, 0)
INSERT [dbo].[TuyenBay] ([MaTuyenBay], [SanBayDi], [SanBayDen], [MaSanBay], [Chieudai], [TrangThai]) VALUES (N'N96       ', N'Quảng Bình', N'Quảng Bình', N'VN_02     ', 6000, 1)
GO
INSERT [dbo].[VeChuyenBay] ([MaVe], [TinhTrangVe], [DonGia]) VALUES (N'N01       ', 1, 5000)
INSERT [dbo].[VeChuyenBay] ([MaVe], [TinhTrangVe], [DonGia]) VALUES (N'N02       ', 1, 10000)
GO
ALTER TABLE [dbo].[ChuyenBay]  WITH CHECK ADD  CONSTRAINT [FK_CHUYENBAY_CHITIETCHUYENBAY] FOREIGN KEY([MaChiTietChuyenBay])
REFERENCES [dbo].[ChiTietChuyenBay] ([MaChiTietChuyenBay])
GO
ALTER TABLE [dbo].[ChuyenBay] CHECK CONSTRAINT [FK_CHUYENBAY_CHITIETCHUYENBAY]
GO
ALTER TABLE [dbo].[ChuyenBay]  WITH CHECK ADD  CONSTRAINT [FK_CHUYENBAY_TUYENBAY] FOREIGN KEY([MaTuyenBay])
REFERENCES [dbo].[TuyenBay] ([MaTuyenBay])
GO
ALTER TABLE [dbo].[ChuyenBay] CHECK CONSTRAINT [FK_CHUYENBAY_TUYENBAY]
GO
ALTER TABLE [dbo].[HangVe]  WITH CHECK ADD  CONSTRAINT [FK_HANGVE_MaVe] FOREIGN KEY([MaVe])
REFERENCES [dbo].[VeChuyenBay] ([MaVe])
GO
ALTER TABLE [dbo].[HangVe] CHECK CONSTRAINT [FK_HANGVE_MaVe]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_CMND] FOREIGN KEY([CMND])
REFERENCES [dbo].[KhachHang] ([CMND])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HOADON_CMND]
GO
ALTER TABLE [dbo].[MayBay]  WITH CHECK ADD  CONSTRAINT [FK_MAYBAY_CHUYENBAY] FOREIGN KEY([MaChuyenBay])
REFERENCES [dbo].[ChuyenBay] ([MaChuyenBay])
GO
ALTER TABLE [dbo].[MayBay] CHECK CONSTRAINT [FK_MAYBAY_CHUYENBAY]
GO
ALTER TABLE [dbo].[MuaVe]  WITH CHECK ADD  CONSTRAINT [FK_MUAVE_KHACHHANG] FOREIGN KEY([CMND])
REFERENCES [dbo].[KhachHang] ([CMND])
GO
ALTER TABLE [dbo].[MuaVe] CHECK CONSTRAINT [FK_MUAVE_KHACHHANG]
GO
ALTER TABLE [dbo].[MuaVe]  WITH CHECK ADD  CONSTRAINT [FK_MUAVE_VECHUYENBAY] FOREIGN KEY([MaVe])
REFERENCES [dbo].[VeChuyenBay] ([MaVe])
GO
ALTER TABLE [dbo].[MuaVe] CHECK CONSTRAINT [FK_MUAVE_VECHUYENBAY]
GO
ALTER TABLE [dbo].[PhieuDatCho]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUDATCHO_CHUYENBAY] FOREIGN KEY([MaChuyenBay])
REFERENCES [dbo].[ChuyenBay] ([MaChuyenBay])
GO
ALTER TABLE [dbo].[PhieuDatCho] CHECK CONSTRAINT [FK_PHIEUDATCHO_CHUYENBAY]
GO
ALTER TABLE [dbo].[PhieuDatCho]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUDATCHO_HANGVE] FOREIGN KEY([MaHangVe])
REFERENCES [dbo].[HangVe] ([MaHangVe])
GO
ALTER TABLE [dbo].[PhieuDatCho] CHECK CONSTRAINT [FK_PHIEUDATCHO_HANGVE]
GO
ALTER TABLE [dbo].[PhieuDatCho]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUDATCHO_KHACHHANG] FOREIGN KEY([CMND])
REFERENCES [dbo].[KhachHang] ([CMND])
GO
ALTER TABLE [dbo].[PhieuDatCho] CHECK CONSTRAINT [FK_PHIEUDATCHO_KHACHHANG]
GO
ALTER TABLE [dbo].[TuyenBay]  WITH CHECK ADD  CONSTRAINT [FK_TuyenBay_SanBay] FOREIGN KEY([MaSanBay])
REFERENCES [dbo].[SanBay] ([MaSanBay])
GO
ALTER TABLE [dbo].[TuyenBay] CHECK CONSTRAINT [FK_TuyenBay_SanBay]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChuyenBay'
GO
