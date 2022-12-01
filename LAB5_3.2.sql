CREATE PROC Bai3_2 @mapb INT, @tenpb NVARCHAR(20), @trphg NVARCHAR(20), @ngaync DATE
AS
BEGIN
	IF(EXISTS(SELECT * FROM PHONGBAN WHERE MAPHG = @mapb))
		UPDATE PHONGBAN
		SET TENPHG = @tenpb, TRPHG = @trphg, NG_NHANCHUC = @ngaync
		WHERE MAPHG = @mapb
	ELSE
		BEGIN
			INSERT INTO PHONGBAN(MAPHG, TENPHG, TRPHG, NG_NHANCHUC)
			VALUES (@mapb, @tenpb, @trphg, @ngaync)
			PRINT('Cap nhat khong thanh cong')
		END
END

EXEC Bai3_2 '8', 'IT', '008', '2019-05-16'