<%--
  Created by IntelliJ IDEA.
  User: Tuan Linh
  Date: 11/7/2022
  Time: 11:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<div class="bg-success">
    <h1 style="text-align: center">Sửa Dịch Vụ</h1>
</div>

<div align="center">
    <form action="/facility?action=update" method="post">
        <table border="1" cellpadding="5">
            <tr>
                <th>Tên dịch vụ:</th>
                <td>
                    <input type="text" name="name" id="ten" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Diện tích:</th>
                <td>
                    <input type="text" name="dien tich" id="dien tich" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Giá:</th>
                <td>
                    <input type="text" name="gia" id="gia" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Số người:</th>
                <td>
                    <input type="text" name="so nguoi" id="so nguoi" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Kiểu thuê ID:</th>
                <td>
                    <input type="text" name="kieu thue ID" id="kieu thue ID" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Kiểu dịch vụ ID:</th>
                <td>
                    <input type="text" name="kieu dich vu" id="kieu dich vu ID" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Kiểu phòng:</th>
                <td>
                    <input type="text" name="kieu phong" id="kieu phong" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Mô tả:</th>
                <td>
                    <input type="text" name="mo ta" id="mo ta" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Diện tích bể bơi:</th>
                <td>
                    <input type="text" name="dien tich be boi" id="dien tich be boi" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Số tầng:</th>
                <td>
                    <input type="text" name="so tang" id="so tang" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Dịch vụ miễn phí:</th>
                <td>
                    <input type="text" name="dich vu mien phi" id="dich vu mien phi" size="45"/>
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
