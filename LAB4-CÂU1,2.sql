--------Viết chương trình xem xét tăng lương cho nhân viên---------
select iif(luong>=ltb,'Khong tang luong','tang luong')
as thuong,tennv,luong,ltb
from
(select tennv,luong,ltb from NHANVIEN,
(select phg,avg(luong) as 'ltb' from NHANVIEN group by phg) as temp
where NHANVIEN.PHG=temp.PHG) as abc
select * from NHANVIEN
select phg,avg(luong) as 'ltb' from NHANVIEN group by phg


-----------Viết chương trình phân loại nhân viên dựa vào mức lương----------------
select iif(luong>=ltb,'truong phong','nhan vien')
as chucvu,tennv,luong
from
(select tennv,luong,ltb from NHANVIEN,
(select phg,avg(luong) as 'ltb' from NHANVIEN group by phg) as temp
where NHANVIEN.PHG=temp.PHG) as abc
select * from NHANVIEN
select phg,avg(luong) as 'ltb' from NHANVIEN group by phg


----------Viết chương trình hiển thị Tên nv, tùy vào cột phái của nhân viên---------
select tennv = case PHAI
when 'nam' then 'Mr.'+[TENNV]
else 'Ms.'+[TENNV]
end
from NHANVIEN


--------------Viết chương trình tính thuế---------------
select TENNV,LUONG,thue=case 
when LUONG	between 0 and 25000 then LUONG*0.1
when LUONG	between 25000 and 30000 then LUONG*0.12
when LUONG	between 30000 and 40000 then LUONG*0.15
when LUONG	between 40000 and 50000 then LUONG*0.2
else LUONG*0.25 end
from NHANVIEN
--CÂU 2
declare @dem int = 2;
while @dem <(select count(manv) from NHANVIEN )
	begin 
		select * from NHANVIEN where cast (manv as int ) = @dem
		set @dem = @dem +2 ;
		end
--MANV = CHẴN TRỪ MANV=004
declare @dem1 int = 2 , @i int;
while @dem1 <(select count(manv) from NHANVIEN )
	begin 
	if (@dem1 = 4 )
		begin set @dem1 = @dem1 + 2
			end
		select * from NHANVIEN where cast (manv as int ) = @dem1
		set @dem1 = @dem1 +2 ;
	end