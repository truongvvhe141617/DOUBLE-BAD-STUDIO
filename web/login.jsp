<%-- 
    Document   : login
    Created on : Jan 25, 2021, 12:11:48 AM
    Author     : Vuong Van Truong
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
 <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<!--Custom styles-->
         <script src='https://kit.fontawesome.com/a076d05399.js'></script>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>

   <form action="login" method="post">
            <div class="auth-form">
                <div class="auth-form-container">
                    <div class="auth-form-header">
                        <h3 class="auth-form-title">Login</h3>
                        <a style="color: #007bff;font-size: 20px;font-family: cursive" href="register.jsp" class="auth-form-subtitle  ">Register</a>
                    </div>

                    <div class="auth-form-form">
                        <div class="auth-form-group">
                            <input class="auth-form-input" type="text" name="username" value="${sessionScope.user.username}"
                                   placeholder="Username" required="required" />
                        </div>
                        <div class="auth-form-group">
                            <input class="auth-form-input" type="password" name="password" value="${sessionScope.user.password}"
                                   placeholder="Password" required="required" />
                        </div>

 
                        <p style="margin-top: -10px; color: red; margin-left: 2px;">${requestScope.message}</p>
                        <div class="" style="display: flex; justify-content: space-between; margin-bottom: 20px; margin-top: -10px;">
                            <div><input type="checkbox" name="remember"  /> Remember me</div>
                            <div><a href="#">Forgot password</a></div>
                        </div>
                    </div>

                    <div class="auth-form-controls">
                        <a href="home" class="btn">Back</a>
                        <button type="submit" class="btn">Login</button>
                    </div>
                        
                </div>
                <div class="auth-form-social">
                    <a href="https://www.facebook.com/" class="btn-social-fb"><i class='fab' style="font-size: 20px;">&#xf09a;</i> Login With Facebook </a>
                    <a href="https://www.google.com/" class="btn-social-gg"><i class='fab' style='font-size:20px; color: tomato'>&#xf2b3;</i> Login With Google </a>
                </div>
            </div>
        </form>
</body>
</html>
