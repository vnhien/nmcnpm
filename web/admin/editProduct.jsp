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
            <h2 style='text-align: center'>Chỉnh sửa:</h2>
            <div class="form-container"> 
       
	 <form method="post" action="admin">
	 
	 <input type="hidden" name="page" value="edit_product">
	 <input type="hidden" name="id" value="<c:out value="${p.getId() }"/>">
     
	 	<div class="form-group">
	 		<label>Tên</label>
	 		<input class="form-control" type="text" name="name" value="<c:out value="${p.getName() }"></c:out>" required>
	 	</div>
	 	<div class="form-group">
	 		<label>Giá</label>
	 		<input class="form-control" type="text" name="price" value="<c:out value="${p.getPrice() }"></c:out>" required>
	 	</div>
	 	<div class="form-group">
	 		<label>Loại</label>
	 		<input class="form-control" type="text" name="category" value="<c:out value="${p.getCategory() }"></c:out>" required>
	 	</div>
	 	
	 	<div class="form-group">
	 		<label>Sản phẩm đặc biệt</label>
	 		<input class="form-control" type="text" name="featured" value="<c:out value="${p.getFeatured() }"></c:out>" required>
	 	</div>
                
	 	<div class="form-group">
	 		<label for="fileupload">Ảnh mới:</label>
                    <input class="form-control" type="file" name="image" value="<c:out value="${p.getImage() }"></c:out>">
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
                    <div class="row">
                        <!-- Start: Services -->
                        <div class="col-sm-6 col-md-3 item">
                            <h3>Services</h3>
                            <ul>
                                <li><a href="#">Web design</a></li>
                                <li><a href="#">Development</a></li>
                                <li><a href="#">Hosting</a></li>
                            </ul>
                        </div>
                        <!-- End: Services -->
                        <!-- Start: About -->
                        <div class="col-sm-6 col-md-3 item">
                            <h3>About</h3>
                            <ul>
                                <li><a href="#">Company</a></li>
                                <li><a href="#">Team</a></li>
                                <li><a href="#">Careers</a></li>
                            </ul>
                        </div>
                        <!-- End: About -->
                        <!-- Start: Footer Text -->
                        <div class="col-md-6 item text">
                            <h3>Company Name</h3>
                            <p>Praesent sed lobortis mi. Suspendisse vel placerat ligula. Vivamus ac sem lacus. Ut vehicula rhoncus elementum. Etiam quis tristique lectus. Aliquam in arcu eget velit pulvinar dictum vel in justo.</p>
                        </div>
                        <!-- End: Footer Text -->
                    </div>
                    <!-- Start: Copyright -->
                    <p class="copyright">Company Name ï¿½ 2017</p>
                    <!-- End: Copyright -->
                </div>
            </footer>
        </div>
        <!-- End: Footer Dark -->
</body>
</html>