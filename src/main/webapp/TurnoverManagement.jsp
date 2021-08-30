<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/admin.css">
    <title>Quản lí sản phẩm</title>
    <link rel="stylesheet" href="./vendor/font-awesome/css/font-awesome.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/style.css">

</head>
<body>
<div class="NavBar" id="nav">

    <nav id="my-navbar" class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand pl-5 mr-5 " href="index.html">FOLB STORE</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="icon-nav">
            <div class="account">
                <div class="login">
                    <a href="index.html"><span>Xin chào, Admin</span></a>
                </div>
            </div>
        </div>
    </nav>


</div>
<div class="main">
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="btn-group-vertical" role="group" aria-label="Basic example">
                    <a style="width: 205px" href="product-admin"><button type="button" class="btn btn-secondary">Sản phẩm</button></a>
                    <a style="width: 205px" href="account-admin"><button type="button" class="btn btn-secondary">Tài khoản</button></a>
                    <a href="cate-admin"><button type="button" class="btn btn-secondary">Danh mục sản phẩm</button></a>
                    <a style="width: 205px" href="order-admin"><button type="button" class="btn btn-secondary">Đơn hàng</button></a>
                    <button type="button" class="btn btn-secondary">Bộ sưu tập</button>
                    <a href="turnover-admin"><button type="button" class="btn btn-secondary">Doanh thu cửa hàng</button></a>
                    <a style="width: 205px" href="home"><button type="button" class="btn btn-secondary">Quay về cửa hàng</button></a>

                </div>
            </div>
            <div class="col-sm-9 table-admin">
                <table class="table table-hover table-striped">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col">ID đơn</th>
                        <th scope="col">Họ tên</th>
                        <th style="width: 10px" scope="col">ID sản phẩm</th>
                        <th scope="col">Giá</th>
                        <th scope="col">Số lượng</th>
                        <th style="width: 120px" scope="col">Ngày tạo</th>
                    </tr>
                    </thead>
                    <tbody style="text-align: center;">
                    <c:forEach items="${order}" var="o">
                        <c:if test="${o.status==1}">
                            <c:set var="sum" value="${sum + o.price * o.quantity}"></c:set>
                            <c:set var="sumall" value="${o.getFormatter().format(sum)}"></c:set>
                            <tr>
                                <td>${o.id}</td>
                                <td>${o.fullname}</td>
                                <td>${o.proid}</td>
                                <td> ${o.getFormatter().format(o.price)} VNĐ</td>
                                <td style="text-align:center"><b>${o.quantity}</b></td>
                                <td>${o.date}</td>
                            </tr>
                        </c:if>
                    </c:forEach>

                    </tbody>


                </table>
                <div class="container">
                    <div class="sum">
                        <h5>Tổng Doanh thu : <strong>${sumall} VNĐ</strong></h5>
                    </div>
                </div>
                <div class="container-fluid d-flex justify-content-center">
                    <ul class="pagination">
                        <li class="page-item"><a class="page-link" href="LoadDateAdmin?idl=${ends}">1</a></li>
                    </ul>
                </div>

            </div>

        </div>
    </div>

</div>
















<script src="./assets/js/vendor/jquery-slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="./assets/js/vendor/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="./dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>

