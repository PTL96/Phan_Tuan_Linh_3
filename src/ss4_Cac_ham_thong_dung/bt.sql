USE quan_ly_sinh_vien;
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select * from subject
where credit = (select max(credit) from subject);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select *
from subject S
left join Mark M
on S.SubID = M.SubID
where Mark = (select max(Mark) from Mark);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select*
from Student S
left join Mark M
on S.StudentID = M.StudentID
order by M.Mark desc;