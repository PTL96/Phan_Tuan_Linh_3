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
    <form action="/facility" method="post">
        <input type="hidden" name="action" value="update">
        <table border="1" cellpadding="5">
            <tr>
                <th>Tên dịch vụ:</th>
                <td>
                    <input type="text" name="name" size="45" value="${name}">
                </td>
            </tr>
            <tr>
                <th>Diện tích:</th>
                <td>
                    <input type="text" name="area" size="45" value="${area}"/>
                </td>
            </tr>
            <tr>
                <th>Giá:</th>
                <td>
                    <input type="text" name="cost" size="45" value="${cost}"/>
                </td>
            </tr>
            <tr>
                <th>Số người:</th>
                <td>
                    <input type="text" name="max_people" size="45" value="${max_people}"/>
                </td>
            </tr>
            <tr>
                <th>Kiểu thuê ID:</th>
                <td>
                    <input type="text" name="rend_type_id" size="45" value="${rend_type_id}"/>
                </td>
            </tr>
            <tr>
                <th>Kiểu dịch vụ ID:</th>
                <td>
                    <input type="text" name="facility_type_id"  size="45" value="${facility_type_id}"/>
                </td>
            </tr>
            <tr>
                <th>Kiểu phòng:</th>
                <td>
                    <input type="text" name="standard_room" size="45" value="${standard_room}"/>
                </td>
            </tr>
            <tr>
                <th>Mô tả:</th>
                <td>
                    <input type="text" name="description_other_convenience" size="45" value="${description_other_convenience}"/>
                </td>
            </tr>
            <tr>
                <th>Diện tích bể bơi:</th>
                <td>
                    <input type="text" name="pool_area" size="45" value="${pool_area}"/>
                </td>
            </tr>
            <tr>
                <th>Số tầng:</th>
                <td>
                    <input type="text" name="number_of_floors" size="45" value="${number_of_floors}"/>
                </td>
            </tr>
            <tr>
                <th>Dịch vụ miễn phí:</th>
                <td>
                    <input type="text" name="facility_free" size="45" value="${facility_free}"/>
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
