USE sieuthi;


create table bophan(
	mabp varchar(25) not null primary key,
    tenbp nvarchar(100) not null
);

create table nhanvien(
	manv varchar(25) not null primary key,
    tennv nvarchar(100) not null,
    salary int not null,
    maql varchar(25),
    
    mabp varchar(25) not null,
    FOREIGN KEY (mabp) REFERENCES bophan(mabp)

);

create table mat_hang(
	mamh varchar(25) not null,
    tenmh nvarchar(250) not null,
    
	mabp varchar(25) not null,
    FOREIGN KEY (mabp) REFERENCES bophan(mabp)
);

create table cungcap(
	macc varchar(25) not null,
    price int not null,
    
	mamh varchar(25) not null,
    FOREIGN KEY (mamh) REFERENCES mat_hang(mamh),
    
	mancc varchar(25) not null,
    FOREIGN KEY (mancc) REFERENCES nguoicungcap(mancc)
);




create table nguoicungcap(
	mancc varchar(25) not null,
    tenncc nvarchar(250) not null,
	address nvarchar(250) not null,
);









