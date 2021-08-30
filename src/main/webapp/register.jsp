<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 5/19/2021
  Time: 2:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Đăng kí</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />
    <link rel="stylesheet" href="assets/login_regis.css">
</head>
<body>
<div class="container">
    <div class="welcome">
        CHÀO MỪNG ĐẾN VỚI FOLB STORE, MỜI TẠO TÀI KHOẢN CỦA BẠN
    </div>
    <div class="myCard">
        <div class="row">
            <div class="col-md-6">
                <div class="myLeftCtn">
                    <form class="myForm text-center" action="register" method="post">
                        <header>Create a new account</header>
                        <div class="form-group">
                            <i class="fas fa-user"></i>
                            <input name="username" class="myInput" type="text" placeholder="Tên đăng nhập" id="Username" required>
                        </div>
                        <div class="form-group">
                            <i class="fas fa-lock"></i>
                            <input name="pass" class="myInput" type="password" id="password" placeholder="Mật khẩu" required>
                        </div>
                        <div class="form-group">
                            <i class="fas fa-id-card"></i>
                            <input name="fullname" class="myInput" type="text" id="" placeholder="Họ và tên" required>
                        </div>
                        <div class="form-group">
                            <i class="fas fa-envelope"></i>
                            <input name="gmail" class="myInput" placeholder="Email" type="text" id="email" required>
                        </div>
                        <div class="form-group">
                            <i class="fas fa-map-marker-alt"></i>
                            <input name="address" class="myInput" type="text" id="address" placeholder="Địa chỉ" required>
                        </div>
                        <div class="form-group">
                            <i class="fas fa-mobile-alt"></i>
                            <input name="phone" class="myInput" type="text" id="phone" placeholder="Số điện thoại" required>
                        </div>
                        <input type="submit" class="butt" value="TẠO TÀI KHOẢN">

                    </form>
                </div>

            </div>

            <div class="col-md-6">
                <div class="myRightCtn">

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


