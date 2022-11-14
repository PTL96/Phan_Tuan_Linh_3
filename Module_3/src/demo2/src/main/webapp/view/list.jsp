<%--
  Created by IntelliJ IDEA.
  User: Tuan Linh
  Date: 11/12/2022
  Time: 10:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Room</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<%--<a href="/index.jsp">--%>
<%--    <button type="button" class="btn btn-dark" style="float: left; font-size: 13px">Quay lại</button>--%>
<%--</a>--%>


<div>
    <a href="/room?action=new">
        <button type="button" class="btn btn-danger" style="font-size: 20px; float: right; margin-top: 20px">Thêm mới</button>
    </a>

        <div class="bg-success">
            <h3 style="text-align: center">THÔNG TIN THUÊ TRỌ</h3>
            <a href="/room">
                <button class="btn btn-outline-dark" type="submit">Trở lại</button>
            </a>
            <form class="d-flex" role="search" action="/room?action=search" method="post">
                <input class="form-control me-2" name="search" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-dark" type="submit" style="float: left; margin-right: 70%; font-size: 15px">Search</button>
            </form>

        </div>

    <table class="table table-hover table-success">
        <thead>
        <tr style="font-size: 15px">
            <th scope="col" style="text-align: center">#</th>
            <th scope="col" style="text-align: center">Tên Khách</th>
            <th scope="col" style="text-align: center">Số Điện Thoại</th>
            <th scope="col" style="text-align: center">Ngày Bắt Đầu</th>
            <th scope="col" style="text-align: center">Kiểu Thanh Toán</th>
            <th scope="col" style="text-align: center">Edit</th>
            <th scope="col" style="text-align: center">Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="room" items="${roomList}" varStatus="status">
            <tr style="font-size: 13px">
                <th scope="row" style="text-align: center">${status.count}</th>
                <td style="text-align: center">${room.getName()}</td>
                <td style="text-align: center">${room.getPhoneNumber()}</td>
                <td style="text-align: center">${room.getStartDay()}</td>
                <td style="text-align: center">${room.getPayId()}</td>


                <td style="text-align: center">
<%--                    <form action="/room?action=edit">--%>
<%--&lt;%&ndash;                        <input type="hidden" name="action" value="edit">&ndash;%&gt;--%>
<%--                        <input type="hidden" name="id" value="${room.getId()}">--%>
<%--                        <button  type="submit" class="btn btn-danger" style="text-align: center">Sửa</button>--%>
<%--                    </form>--%>
    <button type="button" class="btn btn-success btn-sm color-palette">
        <a href="/room?action=edit&id=${room.getId()}">Edit</a>
    </button>
                </td>
                <td style="text-align: center">

                    <button type="button" onclick="infoDelete('${room.getId()}','${room.getName()}')" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Xóa
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="/room" method="post">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Xóa Thông Khách Hàng</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="text" hidden name="action" value="delete">
<%--                    value ở menu servlet--%>
                    <input type="text" id="deleteId" hidden name="deleteId">
                    <span style="color: red">Bạn có chắc muốn xóa !</span>
                </div>

                <div class="modal-footer">


                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                    <button type="submit" class="btn btn-primary">Xóa</button>
                </div>

            </div>
        </form>

    </div>
</div>
<script>
    function infoDelete(id,name) {
        document.getElementById("deleteId").value = id;
        document.getElementById("deleteName").innerText = name;

    }
</script>
</body>
</html>