<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sửa sản phẩm</title>
    <link rel="stylesheet" href="./vendor/font-awesome/css/font-awesome.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/style.css">

</head>

<body>

<div class="container" style="width:50%; margin-top: -1px;">
    <h1 style="text-align: center;">Sửa sản phẩm</h1>
    <form action="UpdatePrByAd" method="post">
        <div class="form-group">
          <%--@declare id="id"--%><label for="id" class="col-form-label">ID:</label>
            <input type="text" name="idpro" value="${product.productID}" class="form-control" id="NameEdit"></input>
        </div>
        <div class="form-group">
            <%--@declare id="name"--%><label for="name" class="col-form-label">Tên:</label>
            <input type="text" name="namepro" value="${product.name}" class="form-control" id="NameEdit"></input>
        </div>
        <div class="form-group">
            <%--@declare id="price"--%><label for="price" class="col-form-label">Giá:</label>
            <input type="text" name="pricepro" value="${product.price}" class="form-control" id="PriceEdit"></input>
        </div>
        <div class="form-group">
            <%--@declare id="quantity"--%><label for="quantity" class="col-form-label">Số lượng:</label>
            <input type="text" name="quantity" value="${product.quantity}" class="form-control" id="QuantityEdit"></input>
        </div>
        <div class="form-group">
            <%--@declare id="category"--%><label for="category" class="col-form-label">Loại sản phẩm:</label>
            <select class="custom-select" id="CategoryEdit" name="selectpro">
                <c:forEach items="${listcate}" var="o">
                    <option selected value="${o.category_id}">${o.name}</option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <%--@declare id="featured"--%><label for="featured" class="col-form-label">Sản phẩm đặc biệt:</label>
            <select class="custom-select" id="FeaturedEdit" name="feapro">
                <option selected value="1">Sản phẩm đặc biệt</option>
                <option value="0">Sản phẩm thường</option>
            </select>
        </div>
        <div class="form-group">
            <%--@declare id="description"--%><label for="description" class="col-form-label">Mô tả</label>:</label>
            <textarea type="text" name="descrip" class="form-control" id="DescriptionEdit">${product.description}</textarea>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary">Sửa</button>
        </div>
    </form>
</div>


<script src="./assets/js/vendor/jquery-slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="./assets/js/vendor/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="./dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>