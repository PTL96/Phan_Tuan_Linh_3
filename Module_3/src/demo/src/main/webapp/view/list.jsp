<%--
  Created by IntelliJ IDEA.
  User: Tuan Linh
  Date: 11/12/2022
  Time: 12:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<a href="/motel">
    <button type="button" class="btn btn-dark" style="float: left; font-size: 13px">Quay lại</button>
</a>
<div>
<%--    <div class="bg-success">--%>
<%--        <form action="/view/list.jsp">--%>
<%--            <input type="hidden" name="action" value="create">--%>
<%--            <button type="submit" class="btn btn-danger" style="font-size: 13px; float: right">List</button>--%>
<%--        </form>--%>
<%--        <h3 style="text-align: center">DANH SÁCH KHÁCH HÀNG</h3>--%>

<%--    </div>--%>
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
        <c:forEach var="motelRoom" items="${motelRoomList}" varStatus="status">
            <tr style="font-size: 13px">
                <th scope="row" style="text-align: center">${status.count}</th>
                <td style="text-align: center">${motelRoom.getName()}</td>
                <td style="text-align: center">${motelRoom.getPhoneNumber()}</td>
                <td style="text-align: center">${motelRoom.getStartDay()}</td>
                <td style="text-align: center">${motelRoom.getPayId()}</td>


                <td style="text-align: center">
                    <form action="/motel">
                        <input type="hidden" name="action" value="edit">
                        <input type="hidden" name="id" value="${motelRoom.getId()}">
                        <button  type="submit" class="btn btn-danger" style="font-size: 13px; float: right">Sửa</button>
                    </form>
                </td>
                <td style="text-align: center">

                    <button type="button" onclick="infoDelete('${motelRoom.getId()}','${motelRoom.getName()}')" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
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
        <form action="/motel" method="post">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Xóa Thông tin dịch vụ</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="text" hidden name="action" value="delete">
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