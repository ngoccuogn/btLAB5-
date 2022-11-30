 create proc sp_gcd
   @a int, @b int
as
begin
   declare @temp int;

   if @a > @b
   begin
       select @temp = @a, @a = @b, @b = @temp;
	   end

	   while @b % @a ! = 0
	   begin
	       select @temp = @a, @a = @b % @a, @b = @temp;
	   end;

	   print N' Ước chung lớn nhất :' + cast (@a as varchar)

end;

exec sp_gcd 10, 2