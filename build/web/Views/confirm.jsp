<%-- 
    Document   : login
    Created on : Oct 26, 2022, 3:22:13 AM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="VI">
    <head>
        <title>Xac Nhan</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="<c:url value="css/style.css"/>">

    </head>
    <body>
        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 text-center mb-5">
                        <h2 class="heading-section"> Xac Nhan</h2>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-7 col-lg-5">
                        <div class="wrap">
                            <div class="img" style="background-image: url(https://mytourcdn.com/upload_images/Image/Location/8_1_2015/Thanh-co-son-tay-mytour-15.jpg)"></div>
                            <div class="login-wrap p-4 p-md-5">
                                <div class="d-flex">
                                    <div class="w-100">
                                        <h3 class="mb-4">Xac Nhan</h3>
                                    </div>
                                </div>
                                
                                
                                <form action="confirmcontrol" class="signin-form" method="get" >
                                    <div class="form-group">
                                        <input type="text" class="form-control" value="${mail}" name="mail">
                                        <label class="form-control-placeholder" for="confirm">email !</label>
                                  </div> 
                                </form>
                                <p style="background-color:#c82333 ; color: white">${mess1}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="/js/jquery.min.js"></script>
        <script src="/js/bootstrap.min.js"></script>
        <script src="/js/main.js"></script>
        <script src="/js/popper.js"></script>

    </body>
</html>


