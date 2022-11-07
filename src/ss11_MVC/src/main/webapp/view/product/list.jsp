
<%--
  Created by IntelliJ IDEA.
  User: Tuan Linh
  Date: 11/5/2022
  Time: 9:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<div>
    <div class="bg-success" >

        <button type="submit" class="btn btn-danger" style="font-size: 13px; float: right">
            <a href="/product?action=add">Thêm mới</a>
            </button>
        <h3 style="text-align: center">DANH SÁCH SẢN PHẨM</h3>

        </div>


    <table class="table table-hover table-success">
        <tr style="font-size: 15px">
            <th scope="col" style="text-align: center">STT</th>
            <th scope="col" style="text-align: center">ID Sản Phẩm</th>
            <th scope="col" style="text-align: center">Tên</th>
            <th scope="col" style="text-align: center">Giá Tiền</th>
            <th scope="col" style="text-align: center">Mô Tả</th>
            <th scope="col" style="text-align: center">Nhà Sản Xuất</th>
            <th scope="col" style="text-align: center">Sửa</th>
            <th scope="col" style="text-align: center">Xóa</th>
        </tr>

        <c:forEach var="product" items="${productList}" varStatus="status">
            <tr style="font-size: 13px">
                <th scope="row" style="text-align: center">${status.count}</th>
                <td style="text-align: center">${product.getId()}</td>
                <td style="text-align: center">${product.getName()}</td>
                <td style="text-align: center">${product.getPrice()}</td>
                <td style="text-align: center">${product.getDescribe()}</td>
                <td style="text-align: center">${product.getProducer()}</td>

                <td style="text-align: center">
                    <div>

                        <button type="submit" class="btn btn-outline-success" style="font-size: 13px">
                            <a href="/product?action=edit&id =${product.getId()}">Sửa</a>
                            </button>

                    </div>
                </td>
                <td style="text-align: center">
                    <div>

                        <button type="submit" class="btn btn-outline-success" style="font-size: 13px">
                            <a href="/product?action=remove&id=${product.getId()}">Xóa</a></button>

                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
