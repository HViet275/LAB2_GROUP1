/*Bài 1 - 1*/
CREATE PROC sp_Bai1_1 @ten NVARCHAR(20)
AS
	BEGIN
		PRINT ('Xin chào: '+ @ten)
	END

EXEC sp_Bai1_1 'BAN'
