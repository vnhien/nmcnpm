<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Home</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link href="Header-Dark.css" rel="stylesheet" type="text/css"/>
        <link href="Navigation-with-Button.css" rel="stylesheet" type="text/css"/>
        <link href="styles.css" rel="stylesheet" type="text/css"/>
        <link href="Footer-Dark.css" rel="stylesheet" type="text/css"/>
        <link href="Registration-Form-with-Photo.css" rel="stylesheet" type="text/css"/>
    </head>
<body>
	<header>
            <nav class="navbar navbar-light navbar-expand sticky-top bg-dark navigation-clean-button" style="color: rgb(255,255,255);background-color: rgb(0,0,0);">
                <div class="container-fluid"><a class="navbar-brand" href="#">Nhóm 6</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse"
                         id="navcol-1">
                        <ul class="nav navbar-nav mr-auto">
                            <li class="nav-item" role="presentation"><a style="color:teal"class="nav-link " href="admin?page=index">Trang chủ</a></li>
                            <li class="nav-item" role="presentation"><a style="color:teal" class="nav-link " href="admin?page=addproduct">Thêm sản phẩm</a></li>
                        
                        </ul></div>
            </nav>
        </header>
	
    
<div class="register-photo">
            <!-- Start: Form Container -->
            <h2 style='text-align: center'>Thêm sản phẩm theo mẫu sau:</h2>
            <div class="form-container"> 
       
            
   
        <form method="post" action="admin">

            <input type="hidden" name="page" value="add_product">
                <div class="form-group">
                    <label>Tên sản phẩm:</label>
                    <input class="form-control" type="text" name="name" required placeholder="Tên sản phẩm" >
                </div>
                <div class="form-group">
                    <label>Giá sản phẩm:</label>
                    <input class="form-control" type="text" name="price" required placeholder="Giá sản phẩm" >
                </div>
                <div class="form-group">
                    <label>Loại sản phẩm:</label>
                    <input class="form-control" type="text" name="category" required placeholder="Loại sản phẩm" >
                </div>
                <div class="form-group">
                    <label>Sản phẩm nổi bật:</label>
                    <input class="form-control" type="text" name="featured" required placeholder="yes/no" >
                </div>
                <div class="form-group">
                    <label for="fileupload">Ảnh sản phẩm:</label>
                    <input class="form-control" type="file" name="image" required>
                </div>
              
            <div class="form-group">
                <button class="btn btn-primary btn-block" value="process"type="submit" style="background-color: rgb(86,198,198);"><strong>Nhập</strong></button>
            </div>

        </form>
            </div>
</div>
          <!-- Start: Footer Dark -->
        <div class="footer-dark">
            <footer>
                <div class="container">
                    
                    <!-- Start: Copyright -->
                    <p class="copyright">NHÓM 6</p>
                    <!-- End: Copyright -->
                </div>
            </footer>
        </div>
        <!-- End: Footer Dark -->
 
</body>
</html>