<%--
  Created by IntelliJ IDEA.
  User: Tuan Linh
  Date: 11/11/2022
  Time: 11:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Nhan vien</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="bg-success">
<a href="/employee">
    <button type="button" class="btn btn-dark" style="float: left; font-size: 13px; margin-top: 6px">Quay lại</button>
</a>
    <h1 style="text-align: center">Thêm Mới Nhân Viên</h1>
</div>

<div align="center">

    <form action="/employee?action=add" method="post">
<%--        <input type="hidden" name="action" value="add">--%>
        <table border="1" cellpadding="5">

            <tr>
                <th>Tên nhân viên:</th>
                <td>
                    <input type="text" name="name" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Ngày sinh:</th>
                <td>
                    <input type="text" name="day_of_birth" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Số CMND/CCCC:</th>
                <td>
                    <input type="text" name="id_card" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Lương:</th>
                <td>
                    <input type="text" name="salary" size="45"/>
                </td>
            </tr>

            <tr>
                <th>Số điện thoại:</th>
                <td>
                    <input type="text" name="phone_number" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Email:</th>
                <td>
                    <input type="text" name="email" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Địa chỉ:</th>
                <td>
                    <input type="text" name="address" size="45"/>
                </td>
            </tr>

            <tr>
                <th>Vị trí:</th>
                <td>
                    <input type="text" name="position_id" size="45"/>
                </td>
            </tr>

            <tr>
                <th>Trình độ:</th>
                <td>
                    <input type="text" name="education_degree_id" size="45"/>
                </td>
            </tr>

            <tr>
                <th>Bộ phận:</th>
                <td>
                    <input type="text" name="division_id" size="45"/>
                </td>
            </tr>

        </table>

         <td>
             <a href="/employee">
                    <button type="button" class="btn btn-dark" style="font-size: 13px">Hủy</button>
             </a>
            </td>

            <td>
                <button type="submit" class="btn btn-danger" style="font-size: 13px">Lưu</button>
            </td>

    </form>

</div>
</body>
</html>
