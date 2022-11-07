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
    <title>add product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
</head>
<body>
<table style="text-align: center">
<div class="bg-success">
    <h1 style="margin-top: 50px; margin-left: 250px">Thêm Mới Sản Phẩm</h1>

</div>

<c:if test="${mess != null}">
    <span style="color: darkslategrey">${mess}</span>
</c:if>
<form action="/product?action=add" method="post" style="text-align: center">
    <table style="width: 500px; text-align: center">

        <tr>
            <td>
                <label>ID Sản Phẩm: </label>
            </td>
            <td><input type="text" name="id" placeholder="Nhập ID sản phẩm"></td>
        </tr>
        <tr>
            <td><label>Tên Sản Phẩm:</label></td>
            <td><input type="text" name="name" placeholder="Nhập tên sản phẩm"></td>
        </tr>
        <tr>
            <td><label>Giá Sản Phẩm: </label></td>
            <td><input type="text" name="Giá" placeholder="Nhập giá sản phẩm"></td>
        </tr>
        <tr>
            <td><label>Mô Tả: </label></td>
            <td><input type="text" name="Mô tả" placeholder="Nhập mô tả"></td>
        </tr>
        <tr>
            <td><label>Nhà Sản Xuất: </label></td>
            <td><input type="text" name="Nhà sản xuất" placeholder="Nhập nhà sản xuất"></td>
        </tr>
        <tr>
            <th>

                <button class="btn btn-outline-primary"><a href="/product"></a>Save</button>

                    <button class="btn btn-outline-primary"><a href="/product"></a>Hủy</button>
                </a>

            </th>
        </tr>

    </table>

</form>
</body>
</html>