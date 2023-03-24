<%-- 
    Document   : signin
    Created on : Oct 26, 2022, 3:22:24 AM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="VI">
    <head>
        <title>Dang ky</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="<c:url value="/css/style.css"/>">

    </head>
    <body>

        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 text-center mb-5">
                    <h2 class="heading-section">Đăng Ký</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-7 col-lg-5">
                    <div class="wrap">
                        <div class="img" style="background-image: url(https://vnn-imgs-f.vgcloud.vn/2021/11/27/10/257381957-1769504896573974-6141244143265703677-n.jpg)"></div>
                        <div class="login-wrap p-4 p-md-5">
                            <div class="d-flex">
                                <div class="w-100">
                                    <h3 class="mb-4">Đăng ký</h3>
                                </div>
                                <div class="w-100">
                                    <p class="social-media d-flex justify-content-end">
                                        <a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a>
                                        <a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a>
                                    </p>
                                </div>
                            </div>
                            <form action="signin" method="post" class="signin-form">
                                <div class="form-group mt-3">
                                    <input type="text" class="form-control" required name="usename">
                                    <label class="form-control-placeholder" for="username">Tên đăng nhập</label>
                                </div>
                                <div class="form-group">
                                    <input id="password-field" type="password" class="form-control" required name="passworld">
                                    <label class="form-control-placeholder" for="password">Mật khẩu</label>
                                    <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                </div>
                                <div class="form-group">
                                    <input id="password-field" type="password" class="form-control" required name="passworld2">
                                    <label class="form-control-placeholder" for="password2">Xác nhận mật khẩu</label>
                                    <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" required name="phonenumber">
                                    <label class="form-control-placeholder" for="phone_number">Số điện thoại</label>
                                </div>
                                <div class="form-group">
                                     <p>Gioi Tinh:</p>
                                    <input type="radio" id="nam" name="gender" value="nam">
                                    <label for="nam">nam</label><br>
                                    <input type="radio" id="nu" name="gender" value="nu">
                                    <label for="nu">nu</label><br>  
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" required name="useemail">
                                    <label class="form-control-placeholder" for="email">Email</label>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="form-control btn btn-primary rounded submit px-3">Đăng ký</button>
                                </div>
                            </form>
                            
                          
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="/js/jquery.min.js"></script>
        <script src="/js/bootstrap.min.js"></script>
        <script src="/js/main.js"></script>
        <script src="/js/popper.js"></script>
    </body>
</html>