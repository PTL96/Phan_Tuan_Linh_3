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
    <title>Title</title>
</head>
<body>
<form action="/product?action=remove" method="post">
    <h1>Xóa Sản Phẩm</h1>
    <td><input type="text" name="id" placeholder="ID muốn xóa"></td>
    <button class="btn btn-outline-primary" type="submit">Xóa</button>
    </a>

</form>
</body>
</html>
