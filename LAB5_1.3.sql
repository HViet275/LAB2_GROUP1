CREATE PROC sp_Bai1_3 @n INT
AS
	BEGIN
		DECLARE @tong int = 0, @i int = 0;
		WHILE @i <= @n
			BEGIN
				SET @tong = @tong + @i
				SET @i = @i + 2
			END
		PRINT 'Tong chan: ' + CAST(@tong AS VARCHAR(10))
	END

EXEC sp_Bai1_3 10