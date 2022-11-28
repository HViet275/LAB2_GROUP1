
CREATE PROC sp_Bai1_4 @a INT, @b INT
AS
	BEGIN
		WHILE (@a != @b)
			BEGIN
				IF(@a > @b)
					SET @a = @a - @b
				ELSE
					SET @b = @b - @a
			END
			RETURN @a
	END

DECLARE @c INT
EXEC @c = sp_Bai1_4 7,5
PRINT @c