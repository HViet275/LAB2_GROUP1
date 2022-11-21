declare @Tong float 
set @Tong = (select SUM(THOIGIAN) from PHANCONG)
select @Tong
select convert(decimal(5,2),@Tong)
select convert(varchar,@Tong)
GO
