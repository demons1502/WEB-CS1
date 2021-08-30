<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Controller.AllProductControl" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
                    <a class="nav-link pr-5 " href="home">Trang chủ<span class="sr-only">(current)</span></a>
                </li>
                <li id="shop" class="nav-item dropdown" ><a class="nav-link pr-5" href="all-product">Cửa hàng</a>
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
                    <a class="nav-link pr-5" href="contact.jsp">Liên hệ</a>
                </li>
            </ul>
        </div>
        <div class="icon-nav">
            <div class="account">

                <c:if test="${sessionScope.account!=null}">
                    <div class="Account_User" style="padding-right: 5px; margin-right: 20px; width: 150px; float: left">
                        <ul style="list-style: none">
                            <li><span>Xin chào, ${sessionScope.account.fullName} |  </span></li>
                            <li><a  href="logout">Đăng xuất</a></li>
                        </ul>


                    </div>
                </c:if>
                <c:if test="${sessionScope.account.role == 1}">
                    <div class="Account_Admin" style="padding-right: 5px">
                        <a href="product-admin" >Quản lí shop</a>
                    </div>
                </c:if>
                <c:if test="${sessionScope.account==null}" >
                    <div class="login">
                        <a href="login.jsp"><span>Đăng nhập</span></a>
                    </div>
                    <div class="register">
                        <a href="register.jsp"><span>Đăng kí</span></a>
                    </div>
                </c:if>
            </div>
            <div class="icon" >
                <input  type="search" placeholder="Tìm kiếm">
                <a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-search mr-3" viewBox="0 0 16 16">
                    <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                </svg>
                </a>
                <c:if test="${sessionScope.account.role == 0}">
                    <a href="cart"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-cart-fill" viewBox="0 0 16 16">
                        <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                    </svg></a>
                </c:if>

                <c:if test="${sessionScope.account!=null}" >
                    <a href="UserProfile"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-fill mr-3 " viewBox="0 0 16 16">
                        <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                    </svg></a>
                </c:if>

            </div>


        </div>

    </nav>


</div>

    <div class="collection collection-allproducts">
        <div class="container-fluid ">
            <div class="container">
                <div class="row">
                    <c:forEach items="${listcollect}" var="o">
                        <div class="col-md-4 col-sm-6">
                            <div class="single-content">
                                <img src="./assets/img/${o.img}" alt="">
                                <div class="text-content">
                                    <h5><a href="#">${o.name}</a></h5>
                                    <h6>MỚI RA MẮT</h6>
                                    <hr>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
    <div class="allproducts-content">
        <div class="row allproducts-row">

            <div class="col-md-3 category">
                <c:forEach items="${listcate}" var="o">
                    <a href="Category?cid=${o.category_id}">
                        <h4>${o.name}</h4>
                    </a>
                    <hr>
                </c:forEach>
            </div>
            <div class="col-md-9 ">
                <!-- Hot Product -->
                <div class="row pb-0">
                    <div class="col-md-12 text-center pt-5">
                        <h1 id="text-hotproduct">SẢN PHẨM HOT</h1>
                        <hr id="hr-hotproduct">
                    </div>
                </div>
                <div class="row hotproduct-slider">
                    <div class="col-md-9 mt_-5">
                        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">

                                    <div class="row pb-0">
                                        <div class="col-md-4 item-product">
                                            <div class="img">
                                                <a href="detail.html"><img src="assets/img/ar_minibag.jpeg"></a>
                                            </div>
                                            <div class="infor-product">
                                                <p> BAE I’M REAL SHIRT - RED</p>
                                            </div>
                                            <div class="price">
                                                <h6>Giá: 490,000đ</h6>
                                            </div>
                                            <div class="add-cart">
                                                <a href="#"><input class="add-cart-btn" type="submit" value="Thêm vào giỏ"></a>
                                            </div>

                                        </div>
                                        <div class="col-md-4 item-product">
                                            <div class="img">
                                                <a href="detail.html"><img src="assets/img/cam.jpg"></a>
                                            </div>
                                            <div class="infor-product">
                                                <p> BAE I’M REAL SHIRT - RED</p>
                                            </div>
                                            <div class="price">
                                                <h6>Giá: 490,000đ</h6>
                                            </div>
                                            <div class="add-cart">
                                                <a href="#"><input class="add-cart-btn" type="submit" value="Thêm vào giỏ"></a>
                                            </div>

                                        </div>
                                        <div class="col-md-4 item-product">
                                            <div class="img">
                                                <a href="detail.html"><img src="assets/img/bloodmoonshirt.jpeg"></a>
                                            </div>
                                            <div class="infor-product">
                                                <p> BAE I’M REAL SHIRT - RED</p>
                                            </div>
                                            <div class="price">
                                                <h6>Giá: 490,000đ</h6>
                                            </div>
                                            <div class="add-cart">
                                                <a href="#"><input class="add-cart-btn" type="submit" value="Thêm vào giỏ"></a>
                                            </div>

                                        </div>
                                    </div>

                                </div>
                                <div class="carousel-item">
                                    <div class="row pb-0">
                                        <div class="col-md-4 item-product">
                                            <div class="img">
                                                <a href="detail.html"><img src="assets/img/Signature_hoodie.jfif"></a>
                                            </div>
                                            <div class="infor-product">
                                                <p> BAE I’M REAL SHIRT - RED</p>
                                            </div>
                                            <div class="price">
                                                <h6>Giá: 490,000đ</h6>
                                            </div>
                                            <div class="add-cart">
                                                <a href="#"><input class="add-cart-btn" type="submit" value="Thêm vào giỏ"></a>
                                            </div>

                                        </div>
                                        <div class="col-md-4 item-product">
                                            <div class="img">
                                                <a href="detail.html"><img src="assets/img/Yukki_Blazer.jpg"></a>
                                            </div>
                                            <div class="infor-product">
                                                <p> BAE I’M REAL SHIRT - RED</p>
                                            </div>
                                            <div class="price">
                                                <h6>Giá: 490,000đ</h6>
                                            </div>
                                            <div class="add-cart">
                                                <a href="#"><input class="add-cart-btn" type="submit" value="Thêm vào giỏ"></a>
                                            </div>

                                        </div>
                                        <div class="col-md-4 item-product">
                                            <div class="img">
                                                <a href="detail.html"><img src="assets/img/haru_pants.jpeg"></a>
                                            </div>
                                            <div class="infor-product">
                                                <p> BAE I’M REAL SHIRT - RED</p>
                                            </div>
                                            <div class="price">
                                                <h6>Giá: 490,000đ</h6>
                                            </div>
                                            <div class="add-cart">
                                                <a href="#"><input class="add-cart-btn" type="submit" value="Thêm vào giỏ"></a>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="row pb-0">
                                        <div class="col-md-4 item-product">
                                            <div class="img">
                                                <a href="detail.html"><img src="assets/img/Turban.jpeg"></a>
                                            </div>
                                            <div class="infor-product">
                                                <p> BAE I’M REAL SHIRT - RED</p>
                                            </div>
                                            <div class="price">
                                                <h6>Giá: 490,000đ</h6>
                                            </div>
                                            <div class="add-cart">
                                                <a href="#"><input class="add-cart-btn" type="submit" value="Thêm vào giỏ"></a>
                                            </div>

                                        </div>
                                        <div class="col-md-4 item-product">
                                            <div class="img">
                                                <a href="detail.html"><img src="assets/img/redline.jpg"></a>
                                            </div>
                                            <div class="infor-product">
                                                <p> BAE I’M REAL SHIRT - RED</p>
                                            </div>
                                            <div class="price">
                                                <h6>Giá: 490,000đ</h6>
                                            </div>
                                            <div class="add-cart">
                                                <a href="#"><input class="add-cart-btn" type="submit" value="Thêm vào giỏ"></a>
                                            </div>

                                        </div>
                                        <div class="col-md-4 item-product">
                                            <div class="img">
                                                <a href="detail.html"><img src="assets/img/Dark_but_still_cute.jpeg"></a>
                                            </div>
                                            <div class="infor-product">
                                                <p> BAE I’M REAL SHIRT - RED</p>
                                            </div>
                                            <div class="price">
                                                <h6>Giá: 490,000đ</h6>
                                            </div>
                                            <div class="add-cart">
                                                <a href="#"><input class="add-cart-btn" type="submit" value="Thêm vào giỏ"></a>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- End of Hot product -->
                <!-- Begin All Product -->
                <div class="row pb-0">
                    <div class="col-md-12 text-center pt-5">
                        <h1 id="text-allproduct">TẤT CẢ SẢN PHẨM</h1>
                        <hr id="hr-allproduct">
                    </div>
                </div>
                <div class="row">
                    <c:forEach items="${listAll}" var="o">
                        <div class="col-md-3 item-product">
                            <div class="img">
                                <a href="Detail?pid=${o.productID}"><img src="${o.image}"></a>
                            </div>
                            <div class="infor-product">
                                <p>${o.name}</p>
                            </div>
                            <div class="price">
                                <h6>Giá: ${o.getFormatter().format(o.price)} VNĐ</h6>
                            </div>
                            <div class="add-cart">
                                <a href="cart?action=add&getidpro=${o.productID}"><input class="add-cart-btn" type="submit" value="Thêm vào giỏ"></a>
                            </div>

                        </div>
                    </c:forEach>
                </div>


                <!-- End of ALL product -->
                <div class="row row-pagination">
                    <div class="col-md-12 pagi">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#">4</a></li>
                                <li class="page-item"><a class="page-link" href="#">5</a></li>
                                <li class="page-item"><a class="page-link" href="#">6</a></li>

                                <li class="page-item"><a class="page-link" href="#">Next</a></li>
                            </ul>
                        </nav>
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




































    <script src="assets/js/vendor/jquery-slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="assets/js/vendor/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>
