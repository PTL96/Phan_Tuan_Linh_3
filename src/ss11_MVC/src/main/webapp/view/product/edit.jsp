<%--
  Created by IntelliJ IDEA.
  User: Tuan Linh
  Date: 11/6/2022
  Time: 2:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit Product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
</head>
<body>
<h1 style="text-align: center">Sửa Sản Phẩm</h1>

<form action="/product?action=edit" method="post">

    <table style="width: 500px">

        <tr>
            <td>
                <label>ID Sản Phẩm: </label>
            </td>
            <td><input type="text" name="id"></td>
        </tr>
        <tr>
            <td><label>Tên Sản Phẩm</label></td>
            <td><input type="text" name="name"></td>
        </tr>

        <tr>
            <td><label>Giá </label></td>
            <td><input type="text" name="price"></td>
        </tr>
        <tr>
            <td><label>Mô tả </label></td>
            <td><input type="text" name="describe"></td>
        </tr>
        <tr>
            <td><label>Nhà sản xuất</label></td>
            <td><input type="text" name="producer"></td>
        </tr>
        <tr>
            <th>
            <td>
                <button class="btn btn-outline-primary">Save</button>
            <a href="/product">
                <button class="btn btn-primary">Trở lại</button>
            </a>
            </td>

            </th>
        </tr>
    </table>
</form>

</body>
</html>