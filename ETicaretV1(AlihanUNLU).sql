select * from adres  select *from fatura select *from faturaDetay select *from ilce select *from kullanici select *from sehir select *from sepet select *from siparis select *from siparisDetay select *from sipDurum select *from urun select *from urunAltKateg select *from urunKateg
select adSoyad, cinsiyet, dogumTarihi from kullanici
select * from urun where fiyat>200
select * from kullanici where adSoyad like'%Ahmet______%'
select * from urun where urunAdi like '%pirin?%'
select * from urun where altkategorino=13 and fiyat>=30
select * from urun where altkategorino=24 or altkategorino=25
select distinct urunNo from siparisDetay
select *from kullanici where year(dogumTarihi)=1999
select * from siparis order by toplamTutar desc
select * from urun order by fiyat desc 
select urunAdi as "?r?n Ad?",fiyat as "Fiyat" from urun
select avg(toplamTutar) from siparis
select *,(fiyat*18/100) as KDV from urun
select REPLACE("eposta",'@sqlegitim.com','')  AS KAdi from kullanici 
select REPLACE("eposta",'@sqlegitim.com','') AS KAdi ,kullaniciAdi  from kullanici where  REPLACE("eposta",'@sqlegitim.com','')  <> kullaniciAdi 
select *from kullanici where tel1 like'%505%' and tel2 like'%505%'
select *from kullanici where month(dogumTarihi)=04 and day(dogumTarihi)=1 
SELECT * ,DATEDIFF(YEAR,dogumTarihi ,GETDATE()) AS YA? from kullanici
SELECT * ,DATEDIFF(YEAR,dogumTarihi ,GETDATE()) AS YAS from kullanici where datediff(year,dogumTarihi,getdate())=36
select * from urun where altkategorino=48  order by  fiyat 
select * from urun where urunAdi like '_______'
select *, len(adSoyad) as uzunluk from kullanici order by len(adSoyad) desc
select cast( avg(fiyat) as decimal(9,2)) as 'ort' from urun where altkategorino=10
select max(tutar)from siparisDetay 
select  top 1 * ,(DATEDIFF(YEAR,dogumTarihi ,GETDATE()))from kullanici
select * from siparis where year(sipTarih)=2020 and month(sipTarih)=03
select COUNT(urunNo) from urun
select COUNT(kullaniciNo) from kullanici
select distinct miktar,count(miktar) as MiktarSay?s? from siparisDetay group by miktar
SELECT CONVERT(VARCHAR(5),GETDATE(),108)
select COUNT(*) as say?s?, altkategorino from urun group by altkategorino
select COUNT(*) as say?s?, altkategorino from urun group by altkategorino order by altkategorino desc
select altkategorino,count(urunNo) as say?s? from urun group by altkategorino having count(urunNo) >=1000
SELECT GETDATE()
select cast( avg(fiyat) as decimal (35,2)) as 'ort' from urun
select * from sepet where kullaniciNo=48
select urunNo,count(*) as say?s? from sepet group by urunNo 
select urunNo,miktar from sepet order by urunNo desc  
select  miktar,urunNo from siparisDetay where miktar=(select max(miktar)from siparisDetay) 
select  urunNo,miktar,tutar from siparisDetay where tutar=(select max(tutar)from siparisDetay) 
select distinct urunNo,miktar from sepet where miktar=5
select distinct urunNo,count(miktar) as tekrarlanan from sepet where miktar=5 group by urunNo
select sehirNo,COUNT(ilceNo) as ilcesay?s? from ilce group by sehirNo 
select sehirNo,COUNT(ilceNo) as ilcesay?s? from ilce group by sehirNo order by COUNT(ilceNo) desc
select sehirNo,COUNT(ilceNo) as ilcesay?s? from ilce  group by sehirNo having  COUNT(ilceNo)>20
select  (avg( DATEDIFF(YEAR,dogumTarihi,GETDATE()) )) as YASortalama from kullanici 
select kategorino,COUNT(altkategorino) as altkatagorisay?s? from urunAltKateg group by kategorino 
select kategorino,COUNT(altkategorino) as altkatagorisay?s? from urunAltKateg group by kategorino having COUNT(altkategorino)>=7
select * from urun where urunAdi like '%kg%' or urunAdi like '%g%'
