CREATE DATABASE cybersoft_shop;

USE cybersoft_shop;

CREATE TABLE loaisanpham (
	maloaisp varchar(255),
	tenloaisp varchar(255),
	
	primary key(maloaisp)
);

CREATE TABLE sanpham(
	masp varchar(50),
	mota varchar(1000),
	tensp varchar(100),
	gia double,
	
	PRIMARY key(masp)
);

CREATE TABLE hoadon(
	mahoadon varchar(50),
	ngaymua DATE,
	makh varchar(255),
	
	primary key(mahoadon)
);

CREATE TABLE khachhang(
	makh varchar(50),
	email varchar(100),
	diachi varchar(255),
	ho varchar(10),
	ten varchar(10),
	sodt varchar(15),
	
	primary key(makh)
);

CREATE TABLE chitiethoadon(
	mahoadon varchar(50),
	masanpham varchar(50),
	soluong int,
	giaban double,
	
	primary key(mahoadon,masanpham)
);

ALTER TABLE sanpham ADD CONSTRAINT FK_masp_sanpham_loaisanpham FOREIGN KEY(masp)
REFERENCES loaisanpham(maloaisp);

ALTER TABLE hoadon ADD CONSTRAINT FK_makh_hoadon_khachhang FOREIGN KEY(makh)
REFERENCES khachhang(makh);

ALTER TABLE chitiethoadon ADD CONSTRAINT FK_mahoadon_chitiethoadon_hoadon FOREIGN KEY(mahoadon)
REFERENCES hoadon(mahoadon)

ALTER TABLE chitiethoadon ADD CONSTRAINT FK_masanpham_chitiethoadon_sanpham FOREIGN KEY(masanpham)
REFERENCES sanpham(masp)
