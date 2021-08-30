<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 5/15/2021
  Time: 12:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<body>
<div class="NavBar" id="nav">

    <nav id="my-navbar" class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand pl-5 mr-5 " href="index.html">FOLB STORE</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mr-auto ml-5">
                <li class="nav-item active">
                    <a class="nav-link pr-5 " href="home">Home <span class="sr-only">(current)</span></a>
                </li>
                <li id="shop" class="nav-item dropdown" ><a class="nav-link pr-5" href="all-product">Shop</a>
                    <ul class="dropdown-menu">
                        <c:forEach items="${listcate}" var="o">
                            <li><a href="Category?cid=${o.category_id}">${o.name}</a></li>
                        </c:forEach>

                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link pr-5" href="#">Blog</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link pr-5" href="#">Contact</a>
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
            <input type="search" id="search" placeholder="Search">
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
<div class="collection collection-allproducts">
    <div class="container-fluid ">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="single-content">
                        <img src="https://zunezx.com/upload/image/cache/data/lookbook/3B7E1612-E1E4-479C-8F6F-AF0AD8A0465A-8c3-crop-500-500.jpeg"
                             alt="">
                        <div class="text-content">
                            <h5><a href="#">THE BLOOD MOON PARTY</a></h5>
                            <h6>MỚI RA MẮT</h6>
                            <hr>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="single-content">
                        <img src="https://bizweb.dktcdn.net/100/414/728/files/123523774-3520769091292400-4834375140875542236-o.jpg?v=1611113098354"
                             alt="">
                        <div class="text-content">
                            <h5><a href="#">THE COLLECTORS X CLOWNZ "MONEY MAKER"</a></h5>
                            <h6>MỚI RA MẮT</h6>
                            <hr>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="single-content">
                        <img src="https://zunezx.com/upload/image/cache/data/collection/NISHIKIGOI-MACOS/5-018-crop-500-500.jpg"
                             alt="">
                        <div class="text-content">
                            <h5><a href="#">NISHIKIGOI MASCOT</a></h5>
                            <h6>MỚI RA MẮT</h6>
                            <hr>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row detail-product">
        <div class="col-sm-5">
            <div class="img-product">
                <img src="${detail.image}">
            </div>
        </div>
        <div class="col-sm-7 about-detail">
            <h2>${detail.name}</h2>

            <h4>ID SẢN PHẨM: ${detail.productID}</h4>
            <h6>Giá: ${detail.getFormatter().format(detail.price)} VNĐ</h6>
            <h6>Tình trạng : Còn hàng</h6>
            <div class="payment">
                Ship COD hoặc thẻ tín dụng
            </div>
            <div class="add-cart">
                <a href="cart?action=add&getidpro=${detail.productID}"><input class="add-cart-btn" type="submit" value="Thêm vào giỏ"></a>
            </div>

        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-sm-12 infor-product-detail">
            <h2>Thông tin sản phẩm</h2>
            <p>${detail.description}</p>
        </div>
    </div>
</div>
<div class="container related-products">
    <div class="row">
        <div class="col-sm-12 related-product-detail infor-product-detail">
            <h2>RELATED PRODUCTS</h2>
            <div class="row hotproduct-slider">
                <div class="col-md-9 mt_-5">
                    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">

                                <div class="row pb-0">
                                    <div class="col-md-3 item-product">
                                        <div class="img">
                                            <a href="detail.html"><img src="./assets/img/bae_i'm_real.jpg"></a>
                                        </div>
                                        <div class="infor-product">
                                            <p> BAE I’M REAL SHIRT - RED</p>
                                        </div>
                                        <div class="price">
                                            <h6>Price: 490,000đ</h6>
                                        </div>
                                        <div class="add-cart">
                                            <a href="#"><input class="add-cart-btn" type="submit" value="Add to Cart"></a>
                                        </div>

                                    </div>
                                    <div class="col-md-3 item-product">
                                        <div class="img">
                                            <a href="detail.html"><img src="./assets/img/bae_i'm_real.jpg"></a>
                                        </div>
                                        <div class="infor-product">
                                            <p> BAE I’M REAL SHIRT - RED</p>
                                        </div>
                                        <div class="price">
                                            <h6>Price: 490,000đ</h6>
                                        </div>
                                        <div class="add-cart">
                                            <a href="#"><input class="add-cart-btn" type="submit" value="Add to Cart"></a>
                                        </div>

                                    </div>
                                    <div class="col-md-3 item-product">
                                        <div class="img">
                                            <a href="detail.html"><img src="./assets/img/bae_i'm_real.jpg"></a>
                                        </div>
                                        <div class="infor-product">
                                            <p> BAE I’M REAL SHIRT - RED</p>
                                        </div>
                                        <div class="price">
                                            <h6>Price: 490,000đ</h6>
                                        </div>
                                        <div class="add-cart">
                                            <a href="#"><input class="add-cart-btn" type="submit" value="Add to Cart"></a>
                                        </div>

                                    </div>
                                    <div class="col-md-3 item-product">
                                        <div class="img">
                                            <a href="detail.html"><img src="./assets/img/bae_i'm_real.jpg"></a>
                                        </div>
                                        <div class="infor-product">
                                            <p> BAE I’M REAL SHIRT - RED</p>
                                        </div>
                                        <div class="price">
                                            <h6>Price: 490,000đ</h6>
                                        </div>
                                        <div class="add-cart">
                                            <a href="#"><input class="add-cart-btn" type="submit" value="Add to Cart"></a>
                                        </div>

                                    </div>
                                </div>

                            </div>
                            <div class="carousel-item">
                                <div class="row pb-0">
                                    <div class="col-md-3 item-product">
                                        <div class="img">
                                            <a href="detail.html"><img src="./assets/img/bae_i'm_real.jpg"></a>
                                        </div>
                                        <div class="infor-product">
                                            <p> BAE I’M REAL SHIRT - RED</p>
                                        </div>
                                        <div class="price">
                                            <h6>Price: 490,000đ</h6>
                                        </div>
                                        <div class="add-cart">
                                            <a href="#"><input class="add-cart-btn" type="submit" value="Add to Cart"></a>
                                        </div>

                                    </div>
                                    <div class="col-md-3 item-product">
                                        <div class="img">
                                            <a href="detail.html"><img src="./assets/img/bae_i'm_real.jpg"></a>
                                        </div>
                                        <div class="infor-product">
                                            <p> BAE I’M REAL SHIRT - RED</p>
                                        </div>
                                        <div class="price">
                                            <h6>Price: 490,000đ</h6>
                                        </div>
                                        <div class="add-cart">
                                            <a href="#"><input class="add-cart-btn" type="submit" value="Add to Cart"></a>
                                        </div>

                                    </div>
                                    <div class="col-md-3 item-product">
                                        <div class="img">
                                            <a href="detail.html"><img src="./assets/img/bae_i'm_real.jpg"></a>
                                        </div>
                                        <div class="infor-product">
                                            <p> BAE I’M REAL SHIRT - RED</p>
                                        </div>
                                        <div class="price">
                                            <h6>Price: 490,000đ</h6>
                                        </div>
                                        <div class="add-cart">
                                            <a href="#"><input class="add-cart-btn" type="submit" value="Add to Cart"></a>
                                        </div>

                                    </div>
                                    <div class="col-md-3 item-product">
                                        <div class="img">
                                            <a href="detail.html"><img src="./assets/img/bae_i'm_real.jpg"></a>
                                        </div>
                                        <div class="infor-product">
                                            <p> BAE I’M REAL SHIRT - RED</p>
                                        </div>
                                        <div class="price">
                                            <h6>Price: 490,000đ</h6>
                                        </div>
                                        <div class="add-cart">
                                            <a href="#"><input class="add-cart-btn" type="submit" value="Add to Cart"></a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="row pb-0">
                                    <div class="col-md-3 item-product">
                                        <div class="img">
                                            <a href="detail.html"><img src="./assets/img/bae_i'm_real.jpg"></a>
                                        </div>
                                        <div class="infor-product">
                                            <p> BAE I’M REAL SHIRT - RED</p>
                                        </div>
                                        <div class="price">
                                            <h6>Price: 490,000đ</h6>
                                        </div>
                                        <div class="add-cart">
                                            <a href="#"><input class="add-cart-btn" type="submit" value="Add to Cart"></a>
                                        </div>

                                    </div>
                                    <div class="col-md-3 item-product">
                                        <div class="img">
                                            <a href="detail.html"><img src="./assets/img/bae_i'm_real.jpg"></a>
                                        </div>
                                        <div class="infor-product">
                                            <p> BAE I’M REAL SHIRT - RED</p>
                                        </div>
                                        <div class="price">
                                            <h6>Price: 490,000đ</h6>
                                        </div>
                                        <div class="add-cart">
                                            <a href="#"><input class="add-cart-btn" type="submit" value="Add to Cart"></a>
                                        </div>

                                    </div>
                                    <div class="col-md-3 item-product">
                                        <div class="img">
                                            <a href="detail.html"><img src="./assets/img/bae_i'm_real.jpg"></a>
                                        </div>
                                        <div class="infor-product">
                                            <p> BAE I’M REAL SHIRT - RED</p>
                                        </div>
                                        <div class="price">
                                            <h6>Price: 490,000đ</h6>
                                        </div>
                                        <div class="add-cart">
                                            <a href="#"><input class="add-cart-btn" type="submit" value="Add to Cart"></a>
                                        </div>

                                    </div>
                                    <div class="col-md-3 item-product">
                                        <div class="img">
                                            <a href="detail.html"><img src="./assets/img/bae_i'm_real.jpg"></a>
                                        </div>
                                        <div class="infor-product">
                                            <p> BAE I’M REAL SHIRT - RED</p>
                                        </div>
                                        <div class="price">
                                            <h6>Price: 490,000đ</h6>
                                        </div>
                                        <div class="add-cart">
                                            <a href="#"><input class="add-cart-btn" type="submit" value="Add to Cart"></a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev ml--40px" href="#carouselExampleControls" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next mr--40px" href="#carouselExampleControls" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer ">
    <div class="container">
        <div class="row row-footer ">
            <div class="col-md-4 footer-item pt-5">
                <h1>Contact Us</h1>
                <p>470 Tran Dai Nghia</p>
                <p>Hoa Quy, Ngu Hanh Son, Da Nang</p>
                <p>+84 334 854 808</p>
                <p>nnhau.20it2@vku.udn.vn</p>
            </div>
            <div class="col-md-4 footer-branch pt-5">
                <h1>Our Branches</h1>
                <p>Sai Gon</p>
                <p>Da Nang</p>
                <p>Ha Noi</p>
            </div>
            <div class="col-md-4 footer-media pt-5">
                <h1>Social Media</h1>
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
</html>
