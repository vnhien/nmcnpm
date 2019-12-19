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
                        
                        </ul></div>
            </nav>
        </header>
	
	 <sql:setDataSource user="sa" password="12345678" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" url="jdbc:sqlserver://localhost:1433;databaseName=myproject" var="ds"/>
	 
	  <sql:query var="result" dataSource="${ds }">
 
		select * from "user" where id in (select distinct userid from "order" )
		 
	   </sql:query>	
           <c:set var="x" value="1" />
                <div class="table-responsive" style="margin-top: 34px;">
            <table class="table">
	<h2>Danh sách đơn hàng:</h2>
		 <thead>
			<tr>
			<th>Thứ tự Đơn hàng</th>
			<th>Tên người mua</th>
                        <th>Email</th>
                        <th>Địa chỉ</th>
                        <th>Chi tiết</th>
                        <th>Xóa đơn hàng</th>
                  </thead>
                  <c:forEach items="${result.rows }" var="row">
		  <tbody>
		  	
				<tr>
                                    <td style="width: 50px;"><c:out value= "${x}"></c:out></td>
                                    <td style="width: 100px;"><c:out value="${row.name }"></c:out></td>
                                    <td style="width: 100px;"><c:out value="${row.email }"></c:out></td>
                                    <td style="width: 100px;"><c:out value="${row.address }"></c:out></td>
                                    <td style="width: 100px;"> <a href="<%= request.getContextPath() %>/admin?page=productlist&userid=<c:out value="${row.id }"/>" style="color:#6bb1f8;">Chi tiết</a></td>
                                    <td style="width: 100px;"> <a href="<%= request.getContextPath() %>/admin?page=deleteorder&userid=${row.id}" style="color:#6bb1f8;">Xóa đơn hàng</a></td>
                                        <c:set var="x" value="${x+1}" />
                  				</tr>
			</tbody>
                 </c:forEach>