/*Bài 1 - 2*/
CREATE PROC sp_Bai1_2 @s1 int, @s2 int
AS
	BEGIN
		DECLARE @tg int = 0;
		SET @tg = @s1 + @s2
		PRINT 'Tong la: ' + CAST(@tg AS VARCHAR(10))
	END

EXEC sp_Bai1_2 4,7