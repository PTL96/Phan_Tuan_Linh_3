<%--
  Created by IntelliJ IDEA.
  User: Tuan Linh
  Date: 11/3/2022
  Time: 11:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
</head>
<body>
<div>
    <div class="bg-success">
        <h3 style="text-align: center">CUSTOMER</h3>
    </div>
    <table class="table table-light">
        <thead>
        <tr style="font-size: 15px">
            <th scope="col" style="text-align: center">#</th>
            <th scope="col" style="text-align: center">Name</th>
            <th scope="col" style="text-align: center">Day Of Birh</th>
            <th scope="col" style="text-align: center">Address</th>
            <th scope="col" style="text-align: center">Picture</th>
            <th scope="col" style="text-align: center">Create</th>
            <th scope="col" style="text-align: center">Edit</th>
            <th scope="col" style="text-align: center">Delete</th>
        </tr>
        <c:forEach var="customer" items="${customerList}" varStatus="stt">
        <tr style="font-size: 13px">
            <th scope="row" style="text-align: center">${stt.count}</th>
            <td style="text-align: center">${customer.getName()}</td>
            <td style="text-align: center">${customer.getDayOfBirth()}</td>
            <td style="text-align: center">${customer.getAddress()}</td>
            <td style="text-align: center;width: 100px" ><img src="${customer.getPicture()}" alt="anh" height="100px"></td>
            <td style="text-align: center">
                <div>
                    <button type="button" class="btn btn-outline-success" style="font-size: 13px">Create</button>
                </div>
            </td>
            <td style="text-align: center">
                <div>
                    <button type="button" class="btn btn-outline-success" style="font-size: 13px">Edit</button>
                </div>
            </td>
        </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
