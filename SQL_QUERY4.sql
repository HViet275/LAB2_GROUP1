SELECT TENPHG as 'Tên Phòng',COUNT(*) as'Số lượng đề án mỗi phòng ban chủ trì:'
	FROM PHONGBAN,DEAN
	WHERE maphg=phong
	GROUP BY TENPHG
