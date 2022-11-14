<%--
  Created by IntelliJ IDEA.
  User: Tuan Linh
  Date: 11/12/2022
  Time: 11:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Khach-Hang</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<a href="/room">
    <button type="button" class="btn btn-danger" style="font-size:17px; float: right; margin-top: 3px ">Quay lại</button>
</a>
<div class="bg-success">
    <h1 style="text-align: center">Thêm Mới Khách Hàng</h1>
</div>

<div align="center">
    <form action="/room?action=add" method="post">
        <%--        <input type="hidden" name="action" value="add">--%>
        <table border="1" cellpadding="5">
            <tr>
                <th>Tên khách hàng:</th>
                <td>
                    <input type="text" name="name" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Số điện thoại:</th>
                <td>
                    <input type="text" name="phoneNumber" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Ngày bắt đầu:</th>
                <td>
                    <input type="text" name="ngayBatDau" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Loại thanh toán:</th>
                <td>
                    <select class="form-control" id="formInput3" name="thanhToanId" id="formInput3">
                        <option value="Hãy chọn giới tính">Hãy chọn loại thanh toán</option>
                        <option value="Tháng" ${room.getPayId()=='Tháng' ? "selected" : ""}>Tháng</option>
                        <option value="Quý" ${room.getPayId()=='Quý' ? "selected" : ""} >Quý</option>
                        <option value="Năm" ${room.getPayId()=='Năm' ? "selected" : ""} >Năm</option>
                    </select>

                </td>
            </tr>


        </table>
        <tr>
            <td colspan="2" style="margin-right: 30px">
                <input type="submit" value="Lưu">

            </td>
            <td colspan="2" align="center">
                <input type="submit" value="Hủy">
            </td>
        </tr>


    </form>

</div>
</body>
</html>
