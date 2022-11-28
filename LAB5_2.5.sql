CREATE PROC Bai2_5 @manv VARCHAR(10), @mapb VARCHAR(10)
AS
BEGIN
	IF EXISTS(SELECT * FROM NHANVIEN WHERE MANV = @manv AND PHG = @mapb)
		PRINT 'Nhan vien ' + @manv + ' co trong phong ban: ' + @mapb
	ELSE
		PRINT'Nhan vien ' + @manv + ' khong co trong phong ban: ' + @mapb
END

EXEC Bai2_5 '006', '4'