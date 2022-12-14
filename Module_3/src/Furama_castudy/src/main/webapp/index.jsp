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
    <button type="submit" class="btn btn-outline-secondary" style="margin-top: 30px; margin-right: 16px; float: right">Tu???n Linh</button>
    <p style="color: white; font-size: 15px; margin-top: 100px; float: right">103 ??? 105 ???????ng V?? Nguy??n Gi??p,<br>
      Ph?????ng Khu?? M???, Qu???n Ng?? h??nh S??n,<br> Tp. ???? N???ng, Vi???t Nam<br>
      7.0 km t??? S??n bay Qu???c t??? ???? N???ng</p>
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
          <a href="/employee">
            <button type="submit" class="btn btn-dark" style="margin-left: 10px">Employee</button>
          </a>
        </li>
        <li class="nav-item">
          <a href="/customer">
            <button type="submit" class="btn btn-dark" style="margin-left: 10px">Customer</button>
          </a>
        </li>
        <li class="nav-item">
          <a href="/facility"> <button type="submit" class="btn btn-dark" style="margin-left: 10px">Facility</button></a>
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
    <h4 class="chutieude" style="color: blueviolet; margin-bottom: 50px">KHU NGH??? D?????NG ?????NG C???P TH??? GI???I, FURAMA ???? N???NG, N???I TI???NG L?? KHU NGH??? D?????NG ???M TH???C T???I VI???T NAM.</h4>
  </div>
  <div class="col-md-4 col-lg-2">
    <ul class="list-group" style="border: 2px solid red">
      <li class="list-group-item" aria-current="true" style="background-color: #2F4F4F">
        <a href="#">Video ti??u bi???u</a>
      </li>
      <li class="list-group-item" style="background-color:#00868B">
        <iframe width=100%; height= 100%; src="https://www.youtube.com/embed/Vvhpm899Eb4" title="Destination wedding review - Furama Resort Danang" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </li>
      <li class="list-group-item" style="background-color:#00868B">
        <iframe width=100%; height=100%; src="https://www.youtube.com/embed/mPM5VsVQ3hw" title="Tr???i nghi???m Bi???t th??? bi???n c?? h??? b??i ri??ng FURAMA s???n s?? nh???t t???i ???? N???ng - Bi???t th??? bi???n TT ???? N???ng" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </li>
      <li class="list-group-item" style="background-color:#00868B">
        <iframe width=100%; height=100%; src="https://www.youtube.com/embed/0YT3hj2TLb8" title="Furama Resort Danang" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </li>
      <li class="list-group-item" style="background-color:#00868B">
        <iframe width=100%; height=100%; src="https://www.youtube.com/embed/qiag-dKL--Y" title="Furama Resort Danang, Bi???t th??? ngh??? d?????ng FURAMA RESORT DANANG - Ng?? H??nh S??n, ???? N???ng" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </li>
      <li class="list-group-item" style="background-color:#00868B">
        <iframe width=100%; height=100%; src="https://www.youtube.com/embed/dJCeMv8vyBE" title="FURAMA RESORT & VILLAS (S33) | REVIEW DA NANG | TRAVEL WITH CHAN 2019" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </li>
      <li class="list-group-item" style="background-color:#00868B">
        <iframe width=100%; height=100%; src="https://www.youtube.com/embed/Pa8tN0u0Rr0" title="Furama Resort DaNang - C??ng ty ?????a ???c Ph?? Long" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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
            <h1 style="color: darkorange">KHU NGH??? D?????NG ?????NG C???P</h1>
            <p style="color: darkorange">N???I TI???NG L?? KHU NGH??? D?????NG ???M TH???C T???I VI???T NAM</p>
          </div>
        </div>
        <div class="carousel-item" data-bs-interval="2000" style="height: 700px; width: 1100px; margin-left: 60px">
          <img src="https://www.hoteljob.vn/files/Anh-Hoteljob-Ni/Nam-2019/Thang-6/Bo-sung-2/10-resort-co-view-dep-nhat-viet-nam-08.jpg" class="d-block w-100" alt="..." >
          <div class="carousel-caption d-none d-md-block">
            <h1 style="color: darkorange">KHU NGH??? D?????NG ?????NG C???P</h1>
            <p style="color: darkorange">N???I TI???NG L?? KHU NGH??? D?????NG ???M TH???C T???I VI???T NAM</p>
          </div>
        </div>
        <div class="carousel-item" data-bs-interval="2000" style="height: 700px; width: 1100px; margin-left: 60px">
          <img src="https://mytourcdn.com/upload_images/Image/Location/21_10_2015/cac-resort-dep-nhat-bali-indonesia-mytour-1.jpg" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block">
            <h1 style="color: darkorange">KHU NGH??? D?????NG ?????NG C???P</h1>
            <p style="color: darkorange">N???I TI???NG L?? KHU NGH??? D?????NG ???M TH???C T???I VI???T NAM</p>
          </div>
        </div>
      </div>
    </div>
    <p>H?????ng ra b??i bi???n ???? N???ng tr???i d??i c??t tr???ng, Furama Resort ???? N???ng l?? c???a ng?? ?????n v???i 3 di s???n v??n ho?? th??? gi???i:<br>
      H???i An (20 ph??t), M??? S??n (90 ph??t) v?? Hu??? (2 ti???ng. 196 ph??ng h???ng sang c??ng v???i 70 c??n bi???t th??? t??? hai ?????n b???n ph??ng <br>
      ng??? c?? h??? b??i ri??ng ?????u ???????c trang tr?? trang nh??, theo phong c??ch thi???t k??? truy???n th???ng c???a Vi???t Nam v?? ki???n tr??c thu???c ?????a c???a Ph??p,<br>
      bi???n Furama th??nh khu ngh??? d?????ng danh gi?? nh???t t???i Vi???t Nam ??? vinh d??? ???????c ????n ti???p nhi???u ng?????i n???i ti???ng,<br>
      gi???i ho??ng gia, ch??nh kh??ch, ng??i sao ??i???n ???nh v?? c??c nh?? l??nh ?????o kinh doanh qu???c t???.</p>
    <p>
    <h1 style="color: darkorange">C??c lo???i ph??ng</h1>
    Khu ngh??? d?????ng c?? 196 ph??ng ???????c thi???t k??? theo phong c??ch truy???n th???ng Vi???t Nam k???t h???p v???i phong c??ch Ph??p,<br>
    2 t??a nh?? 4 t???ng c?? h?????ng nh??n ra bi???n, nh??n ra h??? b??i trong xanh v?? nh???ng khu v?????n nhi???t ?????i xanh t????i m??t.<br>
    Ngo??i ra, khu ngh??? d?????ng Furama c??n cung c???p ca??c li????u ph??p spa, ph??ng x??ng h??i ??????t, ph??ng x??ng h??i kh??, di??ch vu?? <br>
    ma??t-xa ca??nh h???? b??i, c??c d???ch v??? th??? thao d?????i n?????c v?? ca??c l????p t????p yoga v?? Tha??i C????c Quy????n tr??n b??i bi???n.
    </p>
    <h3 style="color: darkorange"> TR???I NGHI???M ???M TH???C & GI???I TR??</h3>
    <p>Khu ngh??? d?????ng Furama ???? N???ng l?? m???t khu ngh??? d?????ng 5 sao sang tr???ng, c?? uy t??n v?? ???????c xem l?? m???t trong nh???ng bi???u t?????ng c???a ng??nh du l???ch Vi???t Nam.
    </p>
  </div>
</div>
</body>
</html>
