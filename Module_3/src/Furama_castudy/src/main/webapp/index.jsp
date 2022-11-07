<%--
  Created by IntelliJ IDEA.
  User: Tuan Linh
  Date: 11/7/2022
  Time: 9:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Furama Resort</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  <style>
    @-webkit-keyframes my {
      0% { color: #F8CD0A; }
      50% { color: #fff;  }
      100% { color: #F8CD0A;  }
    }
    @-moz-keyframes my {
      0% { color: #F8CD0A;  }
      50% { color: #fff;  }
      100% { color: #F8CD0A;  }
    }
    @-o-keyframes my {
      0% { color: #F8CD0A; }
      50% { color: #fff; }
      100% { color: #F8CD0A;  }
    }
    @keyframes my {
      0% { color: #F8CD0A;  }
      50% { color: #fff;  }
      100% { color: #F8CD0A;  }
    }
    .chutieude {
      font-size:24px;
      font-weight:bold;
      -webkit-animation: my 700ms infinite;
      -moz-animation: my 700ms infinite;
      -o-animation: my 700ms infinite;
      animation: my 700ms infinite;
    }
  </style>
</head>
<body>
<div class="header d-flex justify-content-between" style="background-image: url(https://png.pngtree.com/thumb_back/fw800/back_pic/04/15/57/855822da1d1bfc4.JPG)">
  <img src="https://phuongviethcm.com/wp-content/uploads/2019/07/FURAMA.png" style="width: 200px; width: 200px">
  <h1 class="chutieude" style="font-size: 80px;text-align: center; margin-top: 30px; color: #00FFFF">FURAMA RESORT</h1>

  <form>
    <button type="submit" class="btn btn-outline-secondary" style="margin-top: 30px; margin-right: 16px; float: right">Tuấn Linh</button>
    <p style="color: white; font-size: 15px; margin-top: 100px; float: right">103 – 105 Đường Võ Nguyên Giáp,<br>
      Phường Khuê Mỹ, Quận Ngũ hành Sơn,<br> Tp. Đà Nẵng, Việt Nam<br>
      7.0 km từ Sân bay Quốc tế Đà Nẵng</p>
  </form>
</div>

<nav class="navbar navbar-expand-lg" style="background-color: #2F4F4F">
  <div class="container-fluid">
    <form action="http://localhost:63343/src/CASTUDY_SERVLET_M3/furama_bootstrap.html?_ijt=iovn6rsv0s25q056k4g371gvch">
      <button type="submit" class="btn btn-dark">Home</button>
    </form>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <form action="http://localhost:63343/src/CASTUDY_SERVLET_M3/employee.html?_ijt=2c09ietlg94iinlhke3uuvah3o">
            <button type="submit" class="btn btn-dark" style="margin-left: 10px">Employee</button>
          </form>
        </li>
        <li class="nav-item">
          <form action="http://localhost:63343/src/CASTUDY_SERVLET_M3/customer.html?_ijt=k31ic79c9n1ah8bclf03tiajsq">
            <button type="submit" class="btn btn-dark" style="margin-left: 10px">Customer</button>
          </form>
        </li>
        <li class="nav-item">
          <form action="http://localhost:63343/src/CASTUDY_SERVLET_M3/facility.html?_ijt=k31ic79c9n1ah8bclf03tiajsq">
            <button type="submit" class="btn btn-dark" style="margin-left: 10px">Facility</button>

          </form>
        </li>
        <li class="nav-item">
          <form action="http://localhost:63343/src/CASTUDY_SERVLET_M3/contract.html?_ijt=gf3ht80579ddqjesj3ocnjm20v">
            <button type="submit" class="btn btn-dark" style="margin-left: 10px">Contract</button>
          </form>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-dark" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
<div  class="row anh-nen" style="background-color:#528B8B">
  <div class="container-fluid">
    <h4 class="chutieude" style="color: blueviolet; margin-bottom: 50px">KHU NGHỈ DƯỠNG ĐẲNG CẤP THẾ GIỚI, FURAMA ĐÀ NẴNG, NỔI TIẾNG LÀ KHU NGHỈ DƯỠNG ẨM THỰC TẠI VIỆT NAM.</h4>
  </div>
  <div class="col-md-4 col-lg-2">
    <ul class="list-group" style="border: 2px solid red">
      <li class="list-group-item" aria-current="true" style="background-color: #2F4F4F">
        <a href="#">Video tiêu biểu</a>
      </li>
      <li class="list-group-item" style="background-color:#00868B">
        <iframe width=100%; height= 100%; src="https://www.youtube.com/embed/Vvhpm899Eb4" title="Destination wedding review - Furama Resort Danang" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </li>
      <li class="list-group-item" style="background-color:#00868B">
        <iframe width=100%; height=100%; src="https://www.youtube.com/embed/mPM5VsVQ3hw" title="Trải nghiệm Biệt thự biển có hồ bơi riêng FURAMA sịn sò nhất tại Đà Nẵng - Biệt thự biển TT Đà Nẵng" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </li>
      <li class="list-group-item" style="background-color:#00868B">
        <iframe width=100%; height=100%; src="https://www.youtube.com/embed/0YT3hj2TLb8" title="Furama Resort Danang" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </li>
      <li class="list-group-item" style="background-color:#00868B">
        <iframe width=100%; height=100%; src="https://www.youtube.com/embed/qiag-dKL--Y" title="Furama Resort Danang, Biệt thự nghỉ dưỡng FURAMA RESORT DANANG - Ngũ Hành Sơn, Đà Nẵng" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </li>
      <li class="list-group-item" style="background-color:#00868B">
        <iframe width=100%; height=100%; src="https://www.youtube.com/embed/dJCeMv8vyBE" title="FURAMA RESORT & VILLAS (S33) | REVIEW DA NANG | TRAVEL WITH CHAN 2019" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </li>
      <li class="list-group-item" style="background-color:#00868B">
        <iframe width=100%; height=100%; src="https://www.youtube.com/embed/Pa8tN0u0Rr0" title="Furama Resort DaNang - Công ty địa ốc Phú Long" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </li>

    </ul>
  </div>

  <div class="col-md-8 col-lg-10">
    <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>

      <div class="carousel-inner" style="margin-bottom: 100px">
        <div class="carousel-item active" data-bs-interval="2000" style="height: 700px; width: 1100px; margin-left: 60px">
          <img src="https://www.way.com.vn/vnt_upload/File/Image/1639502_17032116450051658354.jpg" class="d-block w-100" alt="..." >
          <div class="carousel-caption d-none d-md-block">
            <h1 style="color: darkorange">KHU NGHỈ DƯỠNG ĐẲNG CẤP</h1>
            <p style="color: darkorange">NỔI TIẾNG LÀ KHU NGHỈ DƯỠNG ẨM THỰC TẠI VIỆT NAM</p>
          </div>
        </div>
        <div class="carousel-item" data-bs-interval="2000" style="height: 700px; width: 1100px; margin-left: 60px">
          <img src="https://www.hoteljob.vn/files/Anh-Hoteljob-Ni/Nam-2019/Thang-6/Bo-sung-2/10-resort-co-view-dep-nhat-viet-nam-08.jpg" class="d-block w-100" alt="..." >
          <div class="carousel-caption d-none d-md-block">
            <h1 style="color: darkorange">KHU NGHỈ DƯỠNG ĐẲNG CẤP</h1>
            <p style="color: darkorange">NỔI TIẾNG LÀ KHU NGHỈ DƯỠNG ẨM THỰC TẠI VIỆT NAM</p>
          </div>
        </div>
        <div class="carousel-item" data-bs-interval="2000" style="height: 700px; width: 1100px; margin-left: 60px">
          <img src="https://mytourcdn.com/upload_images/Image/Location/21_10_2015/cac-resort-dep-nhat-bali-indonesia-mytour-1.jpg" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block">
            <h1 style="color: darkorange">KHU NGHỈ DƯỠNG ĐẲNG CẤP</h1>
            <p style="color: darkorange">NỔI TIẾNG LÀ KHU NGHỈ DƯỠNG ẨM THỰC TẠI VIỆT NAM</p>
          </div>
        </div>
      </div>
    </div>
    <p>Hướng ra bãi biển Đà Nẵng trải dài cát trắng, Furama Resort Đà Nẵng là cửa ngõ đến với 3 di sản văn hoá thế giới:<br>
      Hội An (20 phút), Mỹ Sơn (90 phút) và Huế (2 tiếng. 196 phòng hạng sang cùng với 70 căn biệt thự từ hai đến bốn phòng <br>
      ngủ có hồ bơi riêng đều được trang trí trang nhã, theo phong cách thiết kế truyền thống của Việt Nam và kiến trúc thuộc địa của Pháp,<br>
      biến Furama thành khu nghỉ dưỡng danh giá nhất tại Việt Nam – vinh dự được đón tiếp nhiều người nổi tiếng,<br>
      giới hoàng gia, chính khách, ngôi sao điện ảnh và các nhà lãnh đạo kinh doanh quốc tế.</p>
    <p>
    <h1 style="color: darkorange">Các loại phòng</h1>
    Khu nghỉ dưỡng có 196 phòng được thiết kế theo phong cách truyền thống Việt Nam kết hợp với phong cách Pháp,<br>
    2 tòa nhà 4 tầng có hướng nhìn ra biển, nhìn ra hồ bơi trong xanh và những khu vườn nhiệt đới xanh tươi mát.<br>
    Ngoài ra, khu nghỉ dưỡng Furama còn cung cấp các liệu pháp spa, phòng xông hơi ướt, phòng xông hơi khô, dịch vụ <br>
    mát-xa cạnh hồ bơi, các dịch vụ thể thao dưới nước và các lớp tập yoga và Thái Cực Quyền trên bãi biển.
    </p>
    <h3 style="color: darkorange"> TRẢI NGHIỆM ẨM THỰC & GIẢI TRÍ</h3>
    <p>Khu nghỉ dưỡng Furama Đà Nẵng là một khu nghỉ dưỡng 5 sao sang trọng, có uy tín và được xem là một trong những biểu tượng của ngành du lịch Việt Nam.
    </p>
  </div>
</div>
</body>
</html>
