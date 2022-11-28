CREATE PROC Bai3_1 @mapb INT, @tenpb NVARCHAR(20), @trphg NVARCHAR(20), @ngaync DATE
AS
BEGIN
	IF(EXISTS(SELECT * FROM PHONGBAN WHERE MAPHG = @mapb))
		PRINT 'Them khong thanh cong'
	ELSE
		BEGIN
			INSERT INTO PHONGBAN(MAPHG, TENPHG, TRPHG, NG_NHANCHUC)
			VALUES (@mapb, @tenpb, @trphg, @ngaync)
			PRINT('Them thanh cong')
		END
END

EXEC Bai3_1 '8', 'CNTT', '008', '2019-05-16'