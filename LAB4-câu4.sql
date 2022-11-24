---BÀI 4
----Sum SỐ CHẴN = 1 đến 10 
DECLARE @tong int = 0,@c int,@g int = 1;
SET @c = 10 
WHILE (@g<=@c)
BEGIN
if (@g %2 =0)
SET @tong = @tong + @g
SET @g = @g + 1 
END
PRINT ('Ket qua la: ' )
PRINT @tong


----Sum SỐ CHẴN = 1 đến 10 trừ 4
DECLARE @tong1 int = 0,@d INT = 10,@F INT
SET @F = 1
WHILE (@f<=@d)
BEGIN
if (@f %2 =0)
SET @tong1 = @tong1 + @f
SET @f = @f + 1 
if(@f = 4)
SET @tong1 = @tong1 - 4
END
PRINT ('Ket qua la: ' )
PRINT @tong1