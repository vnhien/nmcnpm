<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Home</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link href="Footer-Dark.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="style.css">
        <link href="Header-Dark.css" rel="stylesheet" type="text/css"/>
        <link href="Navigation-with-Button.css" rel="stylesheet" type="text/css"/>
        <link href="Article-List.css" rel="stylesheet" type="text/css"/>
        <link href="Filter.css" rel="stylesheet" type="text/css"/>
        <link href="Login-Form-Clean.css" rel="stylesheet" type="text/css"/>
        <link href="Navigation-with-Button.css" rel="stylesheet" type="text/css"/>
        <link href="Projects-Clean.css" rel="stylesheet" type="text/css"/>
        <link href="Registration-Form-with-Photo.css" rel="stylesheet" type="text/css"/>
        <link href="product_page.css" rel="stylesheet" type="text/css"/>
        <link href="styles.css" rel="stylesheet" type="text/css"/>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <c:set var="x" value="0"></c:set>
        <c:forEach items="${cartlist }" var="i">
            <c:set var="x" value="${x+1 }"></c:set>
        </c:forEach>



        <header>
            <nav class="navbar navbar-light navbar-expand sticky-top bg-dark navigation-clean-button" style="color: rgb(255,255,255);background-color: rgb(0,0,0);">
                <div class="container-fluid"><a class="navbar-brand" href="Controller?page=index">Nhóm 6</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse"
                         id="navcol-1">
                        <ul class="nav navbar-nav mr-auto">
                            <li class="nav-item" role="presentation"><a style="color:teal"class="nav-link " href="Controller?page=home-decor">TRANG TRÍ</a></li>
                            <li class="nav-item" role="presentation"><a style="color:teal" class="nav-link " href="Controller?page=clothing">QUẦN ÁO</a></li>
                            <li class="nav-item" role="presentation"><a style="color:teal" class="nav-link " href="Controller?page=mobiles">ĐIỆN THOẠI</a></li>
                        </ul><span class="navbar-text actions"> 
                            <c:choose>
                                <c:when test="${session == null}">
                                    <a class="btn btn-light action-button" role="button" href="Controller?page=login">Đăng nhập</a>
                                    <a class="btn btn-light action-button" role="button" href="Controller?page=sign-up">Đăng ký</a>
                                </c:when>
                                <c:when test="${session != null}">
                            <a class="btn btn-light action-button" role="button"><c:out value="${username }"></c:out></a>
                                <a class="btn btn-light action-button" role="button" href="Controller?page=logout">Đăng xuất</a>
                        </c:when>
                    </c:choose> 
                               <a class="btn btn-light action-button" role="button" href="Controller?page=showcart"> Giỏ hàng(<c:out value="${x}"/>)</a>
                           </span></div>
            </nav>
        </header>
      
	
	<div class="container">
	
	<c:choose> 
		<c:when test="${x >= 1}">
						<h3 style="margin-top: 38px;">Giỏ hàng có(<c:out value="${x}"/> sản phẩm)</h4>
		</c:when>
		<c:otherwise >
				<h3 style="margin-top: 38px;">CHƯA CÓ SẢN PHẨM</h3>
		</c:otherwise>
	
	</c:choose>
	<div class="container" style="margin-bottom: 74px;">
        <h2 style="margin-top: 23px;">GIỎ HÀNG</h2>
        <div class="table-responsive" style="margin-top: 34px;">
            <table class="table">
                <thead>
                    <tr style="text-align: center">
                        <th>Tên sản phẩm</th>
                        <th>Giá </th>
                        <th>Loại</th>
                        <th>Bỏ sản phẩm</th>
                    </tr>
                </thead>
               
                    <c:set var="total" value="0"></c:set>
		<c:forEach items="${cartlist }" var="i">
			<c:forEach items="${list }" var="Product">
				<c:if test="${i == Product.getId() }">
				
				<c:set var="total" value="${total + Product.getPrice() }"></c:set>
				
			
			<tbody>	
                            <tr style='text-align: center'>
					<td style="width: 100px;"><img src="${Product.getImage()}" height="100" width="150" >  (<c:out value="${Product.getName()}"/>)</td>
					<td style="width: 50px;"><c:out value="${Product.getPrice()}"/></td>
					<td style="width: 100px;"><c:out value="${Product.getCategory()}"/></td>
					<td style="width: 100px;"><a href="Controller?page=remove&id=<c:out value="${Product.getId()}"/>"><span class="btn btn-danger">X</span></a></td>
				</tr>
                         <tbody>
			
				</c:if>
			</c:forEach>
		</c:forEach>
	
               
            </table>
       
    </div>
        
        <h4 style="margin-top: 40px;margin-bottom: 40px;">Tổng giá trị đơn hàng: (<c:out value="${ total}"></c:out>)VND</h4>

	
        <a  href="Controller?page=success"><button class="btn btn-primary btn-block" type="submit" name="login" style="background-color: rgb(86,198,198);margin-bottom: 15px"><strong>Thanh toán</strong></button></a>
	 <a href="Controller?page=index"><button class="btn btn-primary btn-block" type="submit" name="login" style="background-color: rgb(86,198,198);"><strong>Tiếp tục mua hàng </strong></button></a>

        </div>
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