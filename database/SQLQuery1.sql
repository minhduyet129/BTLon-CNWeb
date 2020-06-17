create database WebBanBanPhim
go
use WebBanBanPhim
go
create table LoaiSanPham(
	MaLoaiSP int primary key identity(1,1),
	TenLoai nvarchar(100)
)
create table SanPham(
	MaSP int primary key identity(1,1),
	TenSP nvarchar(100),
	SoLuongTon int,
	DonGia money,
	Mota ntext,
	HinhAnh varchar(255),
	DaXoa bit,
	MaLoaiSP int references LoaiSanPham(MaLoaiSP) 
)
create table LoaiThanhVien(
	MaLoaiTV int primary key identity(1,1),
	TenLoai nvarchar(100),
	GiamGia int
)
create table KhachHang(
	MaKH int primary key identity(1,1),
	TenKH nvarchar(100),
	TaiKhoan varchar(50),
	MatKhau varchar(32),
	DiaChi nvarchar(255),
	Email nvarchar(255),
	SDT char(10),
	MaLoaiTV int references LoaiThanhVien(MaLoaiTV)
)
create table HoaDon(
	MaHD int primary key identity(1,1),
	MaKH int references KhachHang(MaKH),
	NgayDat date,
	NgayGiao date,
	DaThanhToan bit,
	ThanhTien money,
	DaHuy bit
)
create table CTHoaDon(
	MaHD int references HoaDon(MaHD),
	MaSP int references SanPham(MaSP),
	SoLuong int ,
	DonGia money
	primary key (MaHD,MaSP)
)
create table NhaCungCap(
	MaNCC int primary key identity(1,1),
	TenNCC nvarchar(100)
)
create table PhieuNhap(
	MaPN int primary key identity(1,1),
	MaNCC int references NhaCungCap(MaNCC),
	NgayNhap date,
	ThanhTien money
)
create table CTPhieuNhap(
	MaPN int references PhieuNhap(MaPN),
	MaSP int references SanPham(MaSP),
	SoLuong int,
	DonGia money
	primary key(MaPN,MaSP)
)

create table QuanTri(
	MaAD int primary key identity(1,1),
	TaiKhoan varchar(50),
	MatKhau varchar(50)
)

create table PhanQuyen(
	MaQuyen varchar(100) primary key,
	TenQuyen nvarchar(100),
)
create table PhanQuyen_QuanTri(
	MaAD int references QuanTri(MaAD),
	MaQuyen varchar(100) references PhanQuyen(MaQuyen),
	GhiChu ntext
	primary key (MaAD,MaQuyen)
)