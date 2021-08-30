<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Đăng nhập</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />
    <link rel="stylesheet" href="assets/login_regis.css">
    <script type="text/javascript" src="assets/checkform.js"></script>
</head>
<body>
<div class="container">
    <div class="welcome">
        CHÀO MỪNG ĐẾN VỚI FOLB STORE, MỜI ĐĂNG NHẬP VÀO TÀI KHOẢN CỦA BẠN
    </div>
    <div class="myCard">
        <div class="row">
            <div class="col-md-6">
                <div class="myLeftCtn">
                    <form class="myForm text-center" action="login" method="post">
                        <p class="text-danger">${mess}</p>
                        <header>ĐĂNG NHẬP</header>
                        <div class="form-group">
                            <i class="fas fa-user"></i>
                            <input name="username" class="myInput" placeholder="Tên đăng nhập" type="text" id="username" required>
                        </div>

                        <div class="form-group">
                            <i class="fas fa-lock"></i>
                            <input name="pass" class="myInput" type="password" id="password" placeholder="Mật khẩu" required>
                        </div>


                        <input onclick="check()" type="submit" class="butt" value="ĐĂNG NHẬP" >
                        <a href="register.jsp"><input style="margin-top:30px; background: #333" type="button" class="butt" value="ĐĂNG KÍ" ></a>
                    </form>
                </div>

            </div>
            <div class="col-md-6">
                <div class="myRightCtn" id="r-login">

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


