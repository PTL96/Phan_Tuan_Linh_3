<%--
  Created by IntelliJ IDEA.
  User: Tuan Linh
  Date: 11/9/2022
  Time: 4:37 PM
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
    <form action="/customer" method="post">
        <input type="hidden" name="action" value="update">
        <table border="1" cellpadding="5">
            <tr>
                <th>Loại khách:</th>
                <td>
                    <input type="text" name="customer_type_id" size="45" value="${customer.typeId}">
                </td>
            </tr>
            <tr>
                <th>Tên khách hàng:</th>
                <td>
                    <input type="text" name="name" size="45" value="${customer.name}"/>
                </td>
            </tr>
            <tr>
                <th>Ngày sinh:</th>
                <td>
                    <input type="text" name="day_of_birth" size="45" value="${customer.dayOfBirth}"/>
                </td>
            </tr>
            <tr>
                <th>Giới tính:</th>
                <td>
                    <input type="text" name="gender" size="45" value="${customer.gender}"/>
                </td>
            </tr>
            <tr>
                <th>Số CMND/CCCC:</th>
                <td>
                    <input type="text" name="id_card" size="45" value="${customer.idCard}"/>
                </td>
            </tr>
            <tr>
                <th>Số điện thoại:</th>
                <td>
                    <input type="text" name="phone_number"  size="45" value="${customer.phoneNumber}"/>
                </td>
            </tr>
            <tr>
                <th>Email:</th>
                <td>
                    <input type="text" name="email" size="45" value="${customer.email}"/>
                </td>
            </tr>
            <tr>
                <th>Địa chỉ:</th>
                <td>
                    <input type="text" name="address" size="45" value="${customer.address}"/>
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
