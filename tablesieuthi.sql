USE sieuthi;

create table bophan(
    mabp varchar(25) not null primary key,
    tenbp nvarchar(100) not null
);

create table nhanvien(
    manv varchar(25) not null primary key,
    tennv nvarchar(100) not null,
    luong int not null,
    maql varchar(25),

    mabp varchar(25) not null,
    foreign key(mabp) references bophan(mabp)
);

create table mathang(
    mamh varchar(25) not null primary key,
    tenmh nvarchar(50) not null,

    mabp varchar(25) not null,
    foreign key(mabp) references bophan(mabp)
);

-- Bảng trung gian giữa mặt hàng và người cung cấp
create table cungcap(
    macc varchar(25) not null primary key,
    price int not null,

    mamh varchar(25) not null,
    foreign key(mamh) references mathang(mamh),
    mancc varchar(25) not null,
    foreign key(mancc) references nguoicungcap(mancc)
);



create table nguoicungcap(
    mancc varchar(25) not null primary key,
    tenncc nvarchar(50) not null,
    address nvarchar(100)
);



create table customer(
    makh varchar(25) not null primary key,
    tenkh nvarchar(50) not null,
    address nvarchar(100)
);

create table donhang(
    sohieuddh varchar(25) not null primary key,
    ngaydh date not null,

    makh varchar(25) not null,
    foreign key(makh) references customer(makh)
);

-- Bảng trung gian giữa mặt hàng và đơn hàng
CREATE TABLE chitietdonhang(
	id int NOT NULL AUTO_INCREMENT primary key,
    soluong int not null,
    dongia int not null,

    sohieuddh varchar(25) not null,
    mamh varchar(25) not null,
    FOREIGN KEY(sohieuddh) REFERENCES donhang(sohieuddh),
    FOREIGN KEY(mamh) REFERENCES mathang(mamh)
);


