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
<body>
<div class="cart" style="margin-top: -100px">
    <div class="row pb-0">
        <div class="col-md-12 col-sm-12 ">
            <h4>Giỏ hàng của bạn</h4>
            <p>Xin chào, <b>Nguyen Ngoc Hau</b></p>
            <table class="table table-hover table-striped">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">Sản phẩm</th>
                    <th scope="col">Tên</th>
                    <th scope="col">Giá</th>
                    <th scope="col">Số lượng</th>
                    <th scope="col">Tổng</th>
                    <th scope="col">Xoá</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${cart.item}" var="item">
                    <c:set var="sumprice_pro" value="${item.product.price * item.getQuantity()}"></c:set>
                    <c:set var="sumprice_allpro" value="${sumprice_allpro + item.product.price * item.getQuantity()}"></c:set>
                    <c:set var="sumprice_allpro1" value="${item.product.getFormatter().format(sumprice_allpro)}"></c:set>
                    <tr>
                        <td class="cart-product-img">
                            <img src="${item.product.image}" alt="img">
                        </td>
                        <td>${item.product.name}</td>
                        <td>${item.product.getFormatter().format(item.product.price)} VNĐ</td>
                        <td>
                            <a href="cart?action=sub&getidpro=${item.product.productID}"><button style="font-size: 20px" class="btnSub btn btn-light">-</button></a>
                            <strong style="padding:0 10px;">${item.getQuantity()}</strong>
                            <a href="cart?action=plus&getidpro=${item.product.productID}"><button style="font-size: 20px" class="btnAdd btn btn-light">+</button></a>
                        </td>
                        <td>${item.product.getFormatter().format(sumprice_pro)} VNĐ</td>
                        <td>
                            <a href="cart?action=remove&getidpro=${item.product.productID}">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
                                    <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
                                </svg>
                            </a>
                        </td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>

        </div>


    </div>

</div>
<div class="row payment">
    <div class="col-md-6 col-sm-6 ip-back">
        <a href="all-product"><input type="submit" class="back-shopping" value="Tiếp tục mua hàng"></a>
    </div>
    <div class="col-md-6 col-sm-6 total-money">
        <table class="table table-sm tb-total">
            <tbody>
            <tr>
                <td>Tổng thanh toán:</td>
                <td>${sumprice_allpro1} VNĐ</td>
            </tr>
            <ul class="list-unstyled mb-4">
                <li class="d-flex justify-content-between py-3 border-bottom"><strong >Ngày tạo đơn</strong><strong>${cart.getDateFormat().format(cart.getDate())}</strong></li>
                <li class="d-flex justify-content-between py-3 border-bottom"><strong >Phí vận chuyển</strong><strong>Free ship</strong></li>



            </ul>
            <tr>
                <td colspan="2" class="td-checkout">
                    <form action="checkout" method="get">
                        Địa chỉ của bạn:
                        <input name="address" style="margin-bottom: 20px ;" class="user-address" type="text" placeholder="Nhập địa chỉ giao hàng">
                        <input type="submit" class="check-out" value="Thanh toán">
                    </form>

                </td>
            </tr>
            </tbody>
        </table>
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
