<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 5/31/2021
  Time: 10:16 AM
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
                    <a class="nav-link pr-5 " href="home">Trang chủ <span class="sr-only">(current)</span></a>
                </li>
                <li id="shop" class="nav-item dropdown" ><a class="nav-link pr-5" href="allproduct.html">Của hàng</a>
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
                <div class="login">
                    <a href="logout"><span>Đăng xuất</span></a>
                </div>

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
            </div>

    </nav>


    </div>
    <div class="profile">
        <div class="row pb-0">
            <div class="col-md-9 user-order">
                <h4>Hồ sơ người dùng</h4>
                <p>Xin chào, <b>${account.fullName}</b></p>
                <table class="table table-hover table-striped">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col">ID Đơn hàng</th>
                        <th scope="col">Ngày tạo đơn</th>
                        <th scope="col">Địa chỉ</th>
                        <th scope="col">Giá trị đơn hàng</th>
                        <th scope="col">Trạng thái đơn hàng</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${order}" var="o">
                        <tr>
                            <th scope="row">${o.id}</th>
                            <td>${o.date}</td>
                            <td>${o.address}</td>
                            <td>1,050,000đ</td>
                            <td>${o.status}</td>
                        </tr>
                    </c:forEach>


                    </tbody>
                </table>
                <div class="row row-pagination">
                    <div class="col-md-12 pagi">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="#">Trước</a></li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">Sau</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>


            </div>
            <div class="col-sm-3">
                <div class="about-account">
                    <h3>Tài khoản của tôi</h3>
                    <div class="user-infor">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                            <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                            <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                        </svg>
                        <p>Họ tên: ${account.fullName}</p>

                    </div>

                    <div class="user-infor">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
                            <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
                        </svg>
                        <p>Địa chỉ: ${account.address}</p>
                    </div>
                    <div class="user-infor">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-phone-fill" viewBox="0 0 16 16">
                            <path d="M3 2a2 2 0 0 1 2-2h6a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V2zm6 11a1 1 0 1 0-2 0 1 1 0 0 0 2 0z"/>
                        </svg>
                        <p>Số điện thoại: ${account.phone}  </p>
                    </div>
                    <div class="user-infor">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-mailbox2" viewBox="0 0 16 16">
                            <path d="M9 8.5h2.793l.853.854A.5.5 0 0 0 13 9.5h1a.5.5 0 0 0 .5-.5V8a.5.5 0 0 0-.5-.5H9v1z"/>
                            <path d="M12 3H4a4 4 0 0 0-4 4v6a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V7a4 4 0 0 0-4-4zM8 7a3.99 3.99 0 0 0-1.354-3H12a3 3 0 0 1 3 3v6H8V7zm-3.415.157C4.42 7.087 4.218 7 4 7c-.218 0-.42.086-.585.157C3.164 7.264 3 7.334 3 7a1 1 0 0 1 2 0c0 .334-.164.264-.415.157z"/>
                        </svg>
                        <p>Gmail: ${account.gmail}</p>
                    </div>

                    <div class="user-infor">
                        <button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target="#exampleModal" data-whatever="@fat">Chỉnh sửa thông tin</button>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">New Information</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Account name:</label>
                            <input type="text" class="form-control" id="recipient-name">
                        </div>
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Address:</label>
                            <input type="text" class="form-control" id="recipient-address">
                        </div>
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Phone:</label>
                            <input type="text" class="form-control" id="recipient-phone">
                        </div>
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Gmail:</label>
                            <input type="text" class="form-control" id="recipient-mail">
                        </div>

                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-secondary">Update</button>
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