--CÂU 3--
--TRY CATCH--
BEGIN TRY 
INSERT PHONGBAN (TENPHG, MAPHG, TRPHG,NG_NHANCHUC)
VALUES('SDD',5,'06','1989-10-12')
PRINT'thêm dữ liệu thành công'
END TRY
BEGIN CATCH
PRINT 'thêm dữ liệu thất bại' + CONVERT(VARCHAR, ERROR_NUMBER(),1)
+ ': ' + ERROR_MESSAGE()
END CATCH

--Không dùng RAISERROR
Begin try
    insert PHONGBAN values(799, 'ZXK-799', '2008-07-01', '0197-05-22')
----Nếu lệnh thực thi thành công in ra dòng bên dưới----
print'Them du lieu thanh cong'
end try

---nếu lỗi thì in ra dòng bên dưới-----
begin catch
print 'failure: chen du lieu khong thanh cong'
print 'Error ' + CONVERT(varchar, ERROR_NUMBER(), 1)
 + ': ' + ERROR_MESSAGE()
end catch


--dùng RAISERROR
BEGIN TRY
    DECLARE @result INT
    SET @result=55/0
END TRY
BEGIN CATCH
    DECLARE 
        @ErMessage NVARCHAR (2048),
        @ErSeverity INT,
        @ErState INT
    SELECT
        @ErMessage = ERROR_MESSAGE(),
        @ErSeverity = ERROR_SEVERITY(),
        @ErState = ERROR_STATE()
    RAISERROR (@ErMessage, @ErSeverity, @ErState)
END CATCH