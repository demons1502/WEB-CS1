<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 5/31/2021
  Time: 3:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="./vendor/font-awesome/css/font-awesome.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/style.css">
    <title>FOLB Store</title>

</head>
<body style="height:1000px;">
<div class="NavBar" id="nav">

    <nav id="my-navbar" class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand pl-5 mr-5 " href="index.html">FOLB STORE</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mr-auto ml-5">
                <li class="nav-item active">
                    <a class="nav-link pr-5 " href="index.html">Trang chủ <span class="sr-only">(current)</span></a>
                </li>
                <li id="shop" class="nav-item dropdown" ><a class="nav-link pr-5" href="allproduct.html">Cửa hàng</a>
                    <ul class="dropdown-menu">
                        <li><a href="allproduct.html">Áo thun</a></li>
                        <li><a href="allproduct.html">Áo sơ mi</a></li>
                        <li><a href="allproduct.html">Hoodie</a></li>
                        <li><a href="allproduct.html">Quần</a></li>
                        <li><a href="allproduct.html">Blazer</a></li>
                        <li><a href="allproduct.html">Phụ kiện</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link pr-5" href="#">Blog</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link pr-5" href="#">Liên hệ</a>
                </li>
            </ul>
        </div>
        <div class="icon-nav">
            <div class="account">
                <div class="login">
                    <a href="login.html"><span>Đăng nhập</span></a>
                </div>
                <div class="register">
                    <a href="register.html"><span>Đăng kí</span></a>
                </div>
            </div>
            <input action="search" type="search" id="search" placeholder="Search">
            <div class="icon">
                <a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-search mr-3" viewBox="0 0 16 16">
                    <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                </svg>
                </a>
                <a href="user-profile.html"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-fill mr-3 " viewBox="0 0 16 16">
                    <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                </svg></a>
                <a href="cart.html"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-cart-fill" viewBox="0 0 16 16">
                    <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                </svg></a>
            </div>


        </div>

    </nav>


</div>
<div class="container">
    <div class="contact-top">
        <div class="map" style="text-align:center">
            <iframe style="width:100%" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3835.738711613724!2d108.25104871433558!3d15.97501574620041!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142108997dc971f%3A0x1295cb3d313469c9!2sKorea%20-%20Vietnam%20Friendship%20Information%20Technology%20College!5e0!3m2!1sen!2s!4v1622446593876!5m2!1sen!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div>
    </div>
    <div class="contact-bot" style="padding-top:50px; padding-bottom: 10px;">
        <h1>Liên hệ với chúng tôi</h1>
        <form>
            <div class="form-row">
                <div class="col">
                    <input type="text" class="form-control" placeholder="Họ và tên đệm">
                </div>
                <div class="col">
                    <input type="text" class="form-control" placeholder="Tên">
                </div>
            </div>
            <div class="form-row" style="padding-top:20px">
                <div class="col-sm-12">
                    <input type="email" class="form-control" placeholder="Email">
                </div>
            </div>
            <div class="form-row" style="padding-top:20px">
                <div class="col-sm-12">
                    <textarea class="form-control rounded-0" id="exampleFormControlTextarea2" rows="5" placeholder="Để lại góp ý của bạn"></textarea>
                </div>
                <div class="col-sm-12" style="padding-top: 10px;">
                    <button type="button" class="btn btn-secondary" style="padding: 10px 20px;">Gửi</button>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="footer">
    <div class="container">
        <div class="row row-footer ">
            <div class="col-md-4 footer-item pt-5">
                <h1>Liên hệ với chúng tôi</h1>
                <p>470 Tran Dai Nghia</p>
                <p>Hoa Quy, Ngu Hanh Son, Da Nang</p>
                <p>+84 334 854 808</p>
                <p>nnhau.20it2@vku.udn.vn</p>
            </div>
            <div class="col-md-4 footer-branch pt-5">
                <h1>Các chi nhánh của chúng tôi</h1>
                <p>Sai Gon</p>
                <p>Da Nang</p>
                <p>Ha Noi</p>
            </div>
            <div class="col-md-4 footer-media pt-5">
                <h1>Kênh truyền thông</h1>
                <div class="social-media">
                    <ul>
                        <li><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                        <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                        <li><a href="#"><i class="fa fa-google-plus-square"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>

    </div>
    <div class="copyright">
        <div class="row">
            <div class="col-md-12">
                <hr>
                <h6>Copyright ©2021 All rights reserved | This footer By Ngoc Hau, VKU Student</h6>
            </div>
        </div>
    </div>
</div>

































<script src="./assets/js/vendor/jquery-slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="./assets/js/vendor/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="./dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
