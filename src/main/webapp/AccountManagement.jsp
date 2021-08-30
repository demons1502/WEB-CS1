<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/admin.css">
    <title>Quản lí tài khoản</title>
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
                        <th scope="col">ID tài khoản</th>
                        <th scope="col">Tên đăng nhập</th>
                        <th scope="col">Mật khẩu</th>
                        <th scope="col">Họ và tên</th>
                        <th scope="col">Gmail/SDT</th>
                        <th scope="col">Địa chỉ</th>
                        <th scope="col">Quyền</th>
                        <th scope="col">Thao tác</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${account}" var="o">
                        <tr>
                            <td>${o.id}</td>
                            <td>${o.userName}</td>
                            <td>${o.pass}</td>
                            <td>${o.fullName}</td>
                            <td>${o.gmail}<br>${o.phone}</td>
                            <td>${o.address}</td>
                            <td width="10px" style="text-align: center">${o.role}</td>
                            <td>
                                <a href="UpdatePr?idedit=${o.id}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                    <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                    <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                </svg></a>
                                <a href="Delete?delid=${o.id}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
                                    <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
                                </svg></a>
                            </td>
                        </tr>
                    </c:forEach>

                    </tbody>


                </table>
                <div class="container-fluid d-flex justify-content-center">
                    <ul class="pagination">
                        <li class="page-item"><a class="page-link" href="LoadDateAdmin?idl=${ends}">1</a></li>
                    </ul>
                </div>
                <div class="Addproduct">
                    <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Thêm tài khoản mới</button>
                </div>

            </div>

        </div>
    </div>

</div>


<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Thêm tài khoản</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="AddProduct" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="name" class="col-form-label">Tên đăng nhập</label>
                        <input type="text" name="namepro" class="form-control" id="Name"></input>
                    </div>
                    <div class="form-group">
                        <label for="price" class="col-form-label">Mật khẩu</label>
                        <input type="password" name="pricepro" class="form-control" id="Price"></input>
                    </div>
                    <div class="form-group">
                        <label for="quantity" class="col-form-label">Họ và tên</label>
                        <input type="text" name="quantity" class="form-control" id="Quantity"></input>
                    </div>
                    <div class="form-group">
                        <label for="quantity" class="col-form-label">Gmail</label>
                        <input type="text" name="quantity" class="form-control" id="Gmail"></input>
                    </div>
                    <div class="form-group">
                        <label for="quantity" class="col-form-label">Số điện thoại</label>
                        <input type="text" name="quantity" class="form-control" id="phone-number"></input>
                    </div>
                    <div class="form-group">
                        <label for="quantity" class="col-form-label">Địa chỉ</label>
                        <input type="text" name="quantity" class="form-control" id="Adress"></input>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                        <button type="submit" class="btn btn-primary">Thêm</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>













<script src="./assets/js/vendor/jquery-slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="./assets/js/vendor/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="./dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>

