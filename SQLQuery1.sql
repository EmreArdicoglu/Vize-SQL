create table bankaSehir(
sehirId int not null,
Sehir varchar(15),
primary key (sehirId));

create table bankaSube(
subeId int not null,
sehirId int not null,
Sube varchar(10),
primary key (subeId),
foreign key (sehirId) references bankaSehir);

create table calisan(
calisanId int not null,
subeId int not null,
ad varchar(15),
soyad varchar(20),
primary key (calisanId),
foreign key (subeId) references bankaSube);

create table musteri(
musteriNo int not null,
calisanId int not null,
ad varchar(15),
soyad varchar(20),
primary key (musteriNo),
foreign key (calisanId) references calisan);


insert into bankaSehir (sehirId,Sehir) VALUES (1, 'Ýstanbul')
insert into bankaSehir (sehirId,Sehir) VALUES (2, 'Ýzmir')
insert into bankaSehir (sehirId,Sehir) VALUES (3, 'Balýkesir')

insert into bankaSube (subeId,sehirId,Sube) VALUES (1, 1, 'Pendik')
insert into bankaSube (subeId,sehirId,Sube) VALUES (2, 2, 'Güzelyalý')
insert into bankaSube (subeId,sehirId,Sube) VALUES (3, 1, 'Fatih')
insert into bankaSube (subeId,sehirId,Sube) VALUES (4, 3, 'Susurluk')

insert into calisan (calisanId,subeId,ad,soyad) VALUES (1, 1, 'Ahmet', 'Demir')
insert into calisan (calisanId,subeId,ad,soyad) VALUES (2, 2, 'Ayþe', 'Yýlmaz')
insert into calisan (calisanId,subeId,ad,soyad) VALUES (3, 2, 'Berat', 'Kývýlcým')
insert into calisan (calisanId,subeId,ad,soyad) VALUES (4, 3, 'Bora', 'Albayrak')
insert into calisan (calisanId,subeId,ad,soyad) VALUES (5, 4, 'Melisa', 'Çolak')


insert into musteri (musteriNo,calisanId,ad,soyad) VALUES (1, 1, 'Murat', 'Pala')
insert into musteri (musteriNo,calisanId,ad,soyad) VALUES (2, 1, 'Tuðçe', 'Kanberk')
insert into musteri (musteriNo,calisanId,ad,soyad) VALUES (3, 1, 'Hatice', 'Karademir')
insert into musteri (musteriNo,calisanId,ad,soyad) VALUES (4, 2, 'Asya', 'Aldemir')
insert into musteri (musteriNo,calisanId,ad,soyad) VALUES (5, 2, 'Egemen', 'Dur')
insert into musteri (musteriNo,calisanId,ad,soyad) VALUES (6, 3, 'Emre', 'Kýsa')
insert into musteri (musteriNo,calisanId,ad,soyad) VALUES (7, 4, 'Emre', 'Ardýçoðlu')
insert into musteri (musteriNo,calisanId,ad,soyad) VALUES (8, 5, 'Burak', 'Murat')
insert into musteri (musteriNo,calisanId,ad,soyad) VALUES (9, 5, 'Ali', 'Þaban')


SELECT*FROM dbo.bankaSehir
SELECT*FROM dbo.bankaSube
SELECT*FROM dbo.calisan
SELECT*FROM dbo.musteri


SELECT dbo.bankasehir.sehirId,Sehir,dbo.bankaSube.subeId,Sube,dbo.calisan.calisanId,dbo.calisan.ad,dbo.calisan.soyad,musteriNo,dbo.musteri.ad,dbo.musteri.soyad 
FROM dbo.bankaSehir, dbo.bankaSube, dbo.calisan, dbo.musteri 
WHERE dbo.bankaSehir.sehirId=dbo.bankaSube.sehirId AND dbo.bankaSube.subeId=dbo.calisan.subeId AND dbo.calisan.calisanId=dbo.musteri.calisanId
ORDER BY dbo.bankaSehir.sehirId