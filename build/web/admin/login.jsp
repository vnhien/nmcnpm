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
       
<div class="register-photo">
            <!-- Start: Form Container -->
            <h2 style='text-align: center'>Trang dành cho quản trị viên</h2>
            <div class="form-container"> 
       
            
   
        <form method="post" action="admin">

            <input type="hidden" name="page" value="admin-login-form">

            <!-- Validations errors -->
            <font color="#F24638"><c:out value="${msg }"></c:out></font>
                <div class="form-group">
                    <input class="form-control" type="text" name="username" required="" placeholder="username" value='<c:out value="${username }"></c:out>'>
                </div>

                <div class="form-group">
                    <input class="form-control" type="password" name="password" placeholder="Password" value='<c:out value="${password }"></c:out>'>
                </div>

            <div class="form-group">
                <button class="btn btn-primary btn-block" type="submit" name="login" style="background-color: rgb(86,198,198);"><strong>Đăng nhập</strong></button>
            </div>

        </form>
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