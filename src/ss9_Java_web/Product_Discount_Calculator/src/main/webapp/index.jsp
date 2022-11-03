<%--
  Created by IntelliJ IDEA.
  User: Tuan Linh
  Date: 11/2/2022
  Time: 2:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Product Discount Calculator</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>Product Discount Calculator</h2>
<form action="/tinhchietkhau" method="post">
  <label>List Price: </label><br/>
  <input type="text" name="listPrice" placeholder="List Price"/><br/>
  <label>Discount Percent: </label><br/>
  <input type="text" name="discountPercent" placeholder="Discount Percent"/><br/>
  <input type = "submit" id = "submit" value = "Discount Amount"/>
</form>
</body>
</html>