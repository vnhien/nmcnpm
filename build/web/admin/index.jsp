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
                            <li class="nav-item" role="presentation"><a style="color:teal" class="nav-link " href="admin?page=order">Xem danh sách đơn hàng</a></li>
                        </ul></div>
            </nav>
        </header>
	
	 <sql:setDataSource user="sa" password="12345678" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" url="jdbc:sqlserver://localhost:1433;databaseName=myproject" var="ds"/>
	 
	  <sql:query var="result" dataSource="${ds }">
 
		 select * from product
		 
	   </sql:query>	  
	
	<div class="table-responsive" style="margin-top: 34px;">
            <table class="table">
	<h2>Products List:</h2>
		 <thead>
			<tr>
			<th>ID</th>
			<th>Tên</th>
			<th>Giá</th>
			<th>Loại</th>
			<th>Ảnh</th>
			<th>Lựa chọn</th>
                        </tr>
                </thead>
		
		 <c:forEach items="${result.rows }" var="row">
		  <tbody>
		  	
				<tr>
					<td style="width: 50px;"><c:out value="${row.id }"></c:out></td>
					<td style="width: 100px;"><c:out value="${row.name }"></c:out></td>
					<td style="width: 100px;"><c:out value="${row.price }"></c:out></td>
					<td style="width: 100px;"><c:out value="${row.category}"/></td>
					<td style="width: 100px;"><img src="${row.image}" height="100" width="150" ></td>
					<td style="width: 100px;"><a href="<%= request.getContextPath() %>/admin?page=edit&id=${row.id}" style="color: #6bb1f8;">Thay đổi</a> /
					<a href="<%= request.getContextPath() %>/admin?page=delete&id=${row.id}" style="color:#6bb1f8;">Xóa</a></td>
				</tr>
			</tbody>
                 </c:forEach>	   
                  
            </table>
       
    </div>
                 <!-- Start: Footer Dark -->
        <div class="footer-dark">
            <footer>
                <div class="container">
                    
                        <!-- End: About -->
                        <!-- Start: Footer Text -->
                       
                        <!-- End: Footer Text -->
                    </div>
                    <!-- Start: Copyright -->
                    <p class="copyright">NHÓM 6</p>
                    <!-- End: Copyright -->
                </div>
            </footer>
        </div>
        <!-- End: Footer Dark -->
	
</body>
</html>