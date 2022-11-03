<%--
  Created by IntelliJ IDEA.
  User: Tuan Linh
  Date: 11/3/2022
  Time: 2:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>calculator</title>
</head>
<body>
<form style="text-align: center" method="post" action="calculator">
    <h3>Simple Calculator</h3>
    <h5>Calculator</h5>
    <label>First operand:</label><br>
    <input type="text" name="first_operand"><br><br>
    <label>Operator:</label><br>
    <select name="operator">
        <option>+</option>
        <option>-</option>
        <option>*</option>
        <option>/</option>
    </select><br><br>
    <label>Second operand:</label><br>
    <input type="text" name="second_operand"><br><br>
    <input type="submit" name="result" value="Result">

</form>
</body>
</html>
