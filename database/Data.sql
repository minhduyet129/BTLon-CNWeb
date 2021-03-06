USE [WebBanBanPhim]
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai]) VALUES (1, N'Bàn phím game thủ')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai]) VALUES (2, N'Bàn phím laptop')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai]) VALUES (3, N'Bàn phím mini')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (1, N'Bàn phím fuhlen l411', 10, 150000.0000, NULL, N'1458524455_97.jpg', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (2, N'Bàn phím Mitsumi usb loại 2', 101, 150000.0000, NULL, N'1458525333_ban-phim-mitsumi-usb-loai-2-1.jpg', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (4, N'Bàn phím cho quán game net Newmen KB-835P cổng ps2', 100, 150000.0000, NULL, N'1394791435_ban-phim-cho-quan-game-net-newmen-kb-835p-cong-ps2.jpg', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (5, N'Bàn phím Marvo K201: Keyboard Marvo K201', 58, 150000.0000, NULL, N'1456370189_ban-phim-marvo-k201-4.jpg', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (6, N'Bàn phím Game Colorvis C97', 42, 150000.0000, NULL, N'1458525479_ban-phim-game-colorvis-c97-4.jpg', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (7, N'Bàn phím Colorvis C32 chuyên Game', 37, 150000.0000, NULL, N'1458525639_ban-phim-colorvis-c32-chuyen-game-1.jpg', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (8, N'Bàn phím Marvo K325: bàn phím game thủ K325', 100, 150000.0000, NULL, N'1455703959_ban-phim-marvo-k325.jpg', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (9, N'Bàn phím Marvo K828: bàn phím game thủ k828', 21, 150000.0000, NULL, N'1455765015_ban_phim_gae_thu_marvo_k828.jpg', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (10, N'BÀN PHÍM CƠ CHO GAME THỦ FUHLEN G450', 100, 150000.0000, NULL, N'1458525787_ban-phim-co-cho-game-thu-fuhlen-g450.jpg', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (11, N'Bàn phím máy tính Fuhlen L420', 50, 150000.0000, NULL, N'1458525922_ban-phim-may-tinh-fuhlen-L420-n.jpg', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (12, N'BÀN PHÍM MITSUMI USB CHÍNH HÃNG', 86, 150000.0000, NULL, N'1458526126_ban-phim-mitsumi-usb-chinh-hang-1.jpg', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (13, N'BÀN PHÍM E-BLUE EKM 046BK, BÀN PHÍM CHƠI GAME E-BLUE EMK 046BK', 99, 150000.0000, NULL, N'1379758207_ban-phim-e-blue-emk-046bk-cho-quan-game-net.jpg', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (14, N'Bàn phím chơi Game Colorvis R200', 85, 150000.0000, NULL, N'1458526372_ban-phim-choi-game-colorvis-r200-3.jpg', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (15, N'Bàn phím Game Colorvis R100', 100, 150000.0000, NULL, N'1458526712_ban-phim-game-colorvis-r100-2.jpg', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (16, N'Bàn phím Newmen raptor E360', 70, 150000.0000, NULL, N'1374221922_ban-phim-ps2-newmen-raptor-e360-2.jpg', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (17, N'Bàn phím game thủ Marvo K-400 : Bàn phím máy tính K400', 100, 150000.0000, NULL, N'1445341758_ban-phim-may-tinh.jpg', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (18, N'Bàn phím máy tính Marvo K821: Bàn phím game thủ k-821', 65, 150000.0000, NULL, N'1445422230_ban-phim-may-tinh.jpg', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (19, N'Bàn phím GENIUS PS2 KB-110', 64, 150000.0000, NULL, N'1371871888_ban-phim-genius-ps2-kb-110.jpg', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (20, N'Bàn phím Genius cổng usb KB-110', 54, 150000.0000, NULL, N'1458526834_ban-phim-genius-cong-usb-kb-110-1.jpg', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (21, N'Bàn phím máy tính Marvo K945: Bàn phím cơ game thủ KG-945', 57, 150000.0000, NULL, N'1445430517_ban-phim-may-tinh.jpg', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (22, N'Bàn phím máy tính Foxdigi Mitsumi K01', 59, 150000.0000, NULL, N'1492594600_ban-phim-may-tinh-foxdigi-mitsumi-k01-2.jpg', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (23, N'Bàn phím mini R8 KB1812', NULL, 100000.0000, NULL, N'1466587111_ban-phim-mini-r8-kb1812.jpg', 0, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (24, N'Bàn phím Apple mini K1000', NULL, 100000.0000, NULL, N'1458525021_ban-phim-apple-mini-k1000-1-nho.jpg', 0, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (25, N'Bàn phím bluetooth cho ipad mini', NULL, 100000.0000, NULL, N'1374900665_1371052320_ban-phim-bluetooth-cho-ipad-mini.jpg', 0, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (26, N'Bàn phím Mini Keyboard UKB-500-RF', NULL, 100000.0000, NULL, N'1419760271_Bo-ban-phim-mini-keyboard-UKB-500-RF-3.jpg', 0, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (27, N'Bàn phím laptop Hyundai HY-K521', NULL, 100000.0000, NULL, N'1414122701_ban-phim-laptop-hyundai-hy-k521-3.jpg', 0, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SoLuongTon], [DonGia], [Mota], [HinhAnh], [DaXoa], [MaLoaiSP]) VALUES (28, N'Bàn phím máy tính Raoop 8788', NULL, 100000.0000, NULL, N'1458526923_ban-phim-raoop-8788-1-nho.jpg', 0, 3)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
