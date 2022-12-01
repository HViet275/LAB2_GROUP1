CREATE PROC Bai3_3 @honv NVARCHAR(20), @tenlot NVARCHAR(20), @tennv NVARCHAR(20), @manv NVARCHAR(10),
@ngsinh DATE, @dchi	NVARCHAR(50), @phai NVARCHAR(5), @luong FLOAT, @ma_nql NVARCHAR(5), @phg INT
AS
BEGIN
	DECLARE @age INT
	SET @age = YEAR(GETDATE()) - YEAR(@ngsinh)
	IF @phg = (SELECT MAPHG FROM PHONGBAN WHERE TENPHG = 'IT')
		BEGIN
			IF @luong < 25000
				SET @ma_nql = '009'
			ELSE SET @ma_nql = '005'

			IF (@phai = 'Nam' AND (@age >= 18 AND @age <= 65)) 
				OR (@phai = N'Nữ' AND (@age >= 18 AND @age <= 60))
				BEGIN
					INSERT INTO NHANVIEN(HONV, TENLOT, TENNV, MANV, NGSINH, DCHI, PHAI, LUONG, MA_NQL, PHG)
					VALUES (@honv, @tenlot, @tennv, @manv, @ngsinh, @dchi, @phai, @luong, @ma_nql, @phg)
				END
			ELSE
				PRINT('Khong thuoc do tuoi lao dong')
		END
	ELSE
		PRINT ('Khong phai phong IT')
END

EXEC Bai3_3 'Tran', 'Van', 'Toan', '019', '2002-04-03', 'Da Lat', 'Nam', '26000', '004', '5'
EXEC Bai3_3 'Tran', 'Van', 'Toan', '019', '2002-04-03', 'Da Lat', 'Nam', '26000', '004', '6'