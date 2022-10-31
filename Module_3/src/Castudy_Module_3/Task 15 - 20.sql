-- Task 16: Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021

select nv.ma_nhan_vien, nv.ho_ten
    from nhan_vien nv
    left join hop_dong hd on hd.ma_nhan_vien = nv.ma_nhan_vien
    where nv.ma_nhan_vien not in (select nv.ma_nhan_vien
    from nhan_vien nv
    left join hop_dong hd on hd.ma_nhan_vien=nv.ma_nhan_vien
    where  year(hd.ngay_lam_hop_dong) in (2019,2020,2021));
    
    -- Task 17: Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, chỉ cập nhật những khách hàng đã từng đặt phòng với 
    -- Tổng Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ.
    
    CREATE VIEW tong_view AS
    SELECT
        ma_khach_hang, tong_tien
    FROM
        (SELECT
            hd.ma_khach_hang AS ma_khach_hang,
                sum(IFNULL(dv.chi_phi_thue, 0) + IFNULL(hdct.so_luong * dvdk.gia, 0)) AS tong_tien
        FROM
            hop_dong hd
        LEFT JOIN dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
        LEFT JOIN hop_dong_chi_tiet hdct ON hdct.ma_hop_dong = hd.ma_hop_dong
        LEFT JOIN dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
        WHERE
            YEAR(hd.ngay_lam_hop_dong) = '2021' and (dvdk.gia * hdct.so_luong) + dv.chi_phi_thue > 1000000
        GROUP BY hd.ma_hop_dong
        );
        
        -- Task 18: Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng)
        set sql_safe_updates = 0;
        set foreign_key_checks = 0;
        delete from khach_hang
	where khach_hang.ma_khach_hang in (select hop_dong.ma_khach_hang 
    from hop_dong
        where year(hop_dong.ngay_lam_hop_dong) < '2021'
        group by hop_dong.ma_khach_hang);
        
        
        -- Task 19:	Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi
        
        select hop_dong_chi_tiet.ma_dich_vu_di_kem,
        dich_vu_di_kem.ten_dich_vu_di_kem
        from hop_dong_chi_tiet
        join dich_vu_di_kem
        on hop_dong_chi_tiet.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem
        join hop_dong
	    on hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
        where year(hop_dong.ngay_lam_hop_dong) = '2020'
        group by hop_dong_chi_tiet.ma_dich_vu_di_kem
        having sum(hop_dong_chi_tiet.so_luong) > 10;
        
        -- Task 20: Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống, thông tin hiển thị bao gồm id (ma_nhan_vien, ma_khach_hang), 
        -- ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi
        
        select nhan_vien.ma_nhan_vien, nhan_vien.ho_ten, nhan_vien.email, nhan_vien.so_dien_thoai, nhan_vien.ngay_sinh, nhan_vien.dia_chi from nhan_vien
        union all
        select khach_hang.ma_khach_hang, khach_hang.ho_ten, khach_hang.email, khach_hang.so_dien_thoai, khach_hang.ngay_sinh, khach_hang.dia_chi from khach_hang;
        
        -- Task 21: Tạo khung nhìn có tên là v_nhan_vien để lấy được thông tin của tất cả các nhân viên có địa chỉ là “Hải Châu” và đã từng lập hợp đồng cho một hoặc nhiều khách hàng bất kì với ngày lập hợp đồng là “12/12/2019”.
        
        create view v_nhan_vien as select nhan_vien.*
        from nhan_vien
        
	

        
	
	
