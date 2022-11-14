<%--
  Created by IntelliJ IDEA.
  User: Tuan Linh
  Date: 11/7/2022
  Time: 11:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Facility</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<form action="/index.jsp">
    <button type="submit" class="btn btn-dark" style="float: left; font-size: 13px">Quay lại</button>
</form>
<div>

</div>
<div>
    <div class="bg-success">
        <form action="/facility">
            <input type="hidden" name="action" value="create">
            <button type="submit" class="btn btn-danger" style="font-size: 13px; float: right">Thêm mới</button>
        </form>
        <h3 style="text-align: center">FACILITY</h3>

    </div>
    <table class="table table-hover table-success">
        <thead>
        <tr style="font-size: 15px">
            <th scope="col" style="text-align: center">#</th>
            <th scope="col" style="text-align: center">Tên Dịch Vụ</th>
            <th scope="col" style="text-align: center">Diện Tích</th>
            <th scope="col" style="text-align: center">Giá</th>
            <th scope="col" style="text-align: center">Số Người</th>
            <th scope="col" style="text-align: center">ID Kiểu Thuê</th>
            <th scope="col" style="text-align: center">ID Loại Dịch Vụ</th>
            <th scope="col" style="text-align: center">Kiểu Phòng</th>
            <th scope="col" style="text-align: center">Mô Tả</th>
            <th scope="col" style="text-align: center">Diện Tích Bể Bơi</th>
            <th scope="col" style="text-align: center">Số Tầng</th>
            <th scope="col" style="text-align: center">Dịch Vụ Miễn Phí</th>
            <th scope="col" style="text-align: center">Edit</th>
            <th scope="col" style="text-align: center">Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="facility" items="${listFacility}" varStatus="status">
        <tr style="font-size: 13px">
            <th scope="row" style="text-align: center">${status.count}</th>
            <td style="text-align: center">${facility.getName()}</td>
            <td style="text-align: center">${facility.getArea()}</td>
            <td style="text-align: center">${facility.getCost()}</td>
            <td style="text-align: center">${facility.getMaxPeople()}</td>
            <td style="text-align: center">${facility.getRendTypeId()}</td>
            <td style="text-align: center">${facility.getFacilityTypeId()}</td>
            <td style="text-align: center">${facility.getStandardRoom()}</td>
            <td style="text-align: center">${facility.getDescriptionOther()}</td>
            <td style="text-align: center">${facility.getPoolArea()}</td>
            <td style="text-align: center">${facility.getNumberOfFloors()}</td>
            <td style="text-align: center">${facility.getFacilityFree()}</td>

            <td style="text-align: center">
                <form action="/facility">
                    <input type="hidden" name="action" value="edit">
                    <input type="hidden" name="id" value="${facility.getId()}">
                    <button  type="submit" class="btn btn-danger" style="font-size: 13px; float: right">Sửa</button>
                </form>
            </td>
            <td style="text-align: center">

                <button type="button" onclick="infoDelete('${facility.getId()}','${facility.getName()}')" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                   delete
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
        <form action="/employee" method="post">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Xóa Thông Tin Nhân Viên</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <input type="text" hidden name="action" value="delete">
                <input type="text" id="deleteId" hidden name="deleteId">
                <span>Bạn có chắc muốn xóa !</span>
            </div>

                <div class="modal-footer">


                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Delete</button>
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
