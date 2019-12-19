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
      


        <div class="register-photo">
            <!-- Start: Form Container -->
            <div class="form-container">
                <form method="post" action="Controller">
                    <input type="hidden" name="page" value="login-form">
                    <!-- Validations errors -->
                    <font color="#F24638"><c:out value="${msg }"></c:out></font>                <h2 class="text-center"><strong>Đăng nhập</strong></h2>

                        <div class="form-group"><input class="form-control" type="text" name="username" required="" placeholder="username" value='<c:out value="${username }"></c:out>'</div>
                    <div class="form-group">	<input class="form-control" type="password" name="password" placeholder="Password" value='<c:out value="${password }"></c:out>'></div>

                    <div class="form-group"><button class="btn btn-primary btn-block" type="submit" name="login" style="background-color: rgb(86,198,198);"><strong>Đăng nhập</strong></button></div>
                    <a href="Controller?page=sign-up" class="already">Chưa có tài khoản</a></form>
            </div>
            <!-- End: Form Container -->
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
















































