create proc sp_TimnvtheoTP
	@TrPhg nvarchar(9)
as
begin 
	select b.*from PHONGBAN a inner join NHANVIEN b on a.MAPHG =b.PHG
		where a.TRPHG = @TrPhg and
		not exists(select * from THANNHAN where MANV = b.MANV)
end;

exec [dbo].[sp_TimnvtheoTP] '005';