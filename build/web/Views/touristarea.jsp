<%-- 
    Document   : touristarea
    Created on : Oct 25, 2022, 11:42:14 PM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="VI">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="../Project/css/tourist.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <title>Son Tay Tour</title>
    </head>
    <body>
        <div class="container-fluid header">
            <div class="row headerrow">
                <div class="col-md-3">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvWvheCDX5kjOom9I_ZUY-PqFiS0g-b2cXkw&usqp=CAU" alt="logo">
                </div>
                <div class="col-md-7">
                    <h1>BOOK TICKETS</h1>
                </div>
                <div class="col-md-2">
                     <c:if test="${acc!=null}">
                <c:if test="${acc.getRole_id()==0}">
                             <a href="#"><i class="bi bi-person-circle"></i>
          </a>
            <h5> ${sessionScope.acc.getName()} </h5>
          <ul class="list-group list-group-numbered">
            <li class="list-group-item d-flex justify-content-between align-items-start">
              <div class="ms-2 me-auto">
                <div class="">
                  <a href="">Cai Dat Tai Khoan</a>
                </div>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-start">
              <div class="ms-2 me-auto">
                <div class="">
                  <a href=""> Che do Admin</a>
                </div>
              </div>
            </li>
              <li class="list-group-item d-flex justify-content-between align-items-start">
              <div class="ms-2 me-auto">
                <div class="">
                  <a href="homecot?se=1">Dang xuat</a>
                </div>
              </div>
            </li>
          </ul>
                </c:if>
                <c:if test="${acc.getRole_id()==1}">
                     <a href="#"><i class="bi bi-person-circle"></i>
          </a>
            <h5> ${sessionScope.acc.getName()} </h5>
          <ul class="list-group list-group-numbered">
            <li class="list-group-item d-flex justify-content-between align-items-start">
              <div class="ms-2 me-auto">
                <div class="">
                  <a href="">Cai Dat Tai Khoan</a>
                </div>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-start">
              <div class="ms-2 me-auto">
                <div class="">
                  <a href="<c:url value="Views/orderdet.jsp"/>"> Ve Da dat</a>
                </div>
              </div>
              <span class="badge bg-primary rounded-pill">${sessionScope.size}</span>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-start">
              <div class="ms-2 me-auto">
                <div class="">
                  <a href="">Lich Su Dat Ve</a>
                </div>
              </div>
              
            </li>
              <li class="list-group-item d-flex justify-content-between align-items-start">
              <div class="ms-2 me-auto">
                <div class="">
                  <a href="homecot?se=1">Dang xuat</a>
                </div>
              </div>
            </li>
          </ul>
                </c:if>
                </c:if>
                    
                    <c:if test="${acc==null}">
                        <a href="<c:url value="loginco" />" class="sig">Dang nhap</a>
                        <a href="<c:url value="signin" />" class="sig">Dang ky </a>
                    </c:if>
                
                </div>
            </div>      
        </div>


        <div class="container-fluid slide">
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <c:forEach items="${product}" var="i" varStatus="pa">
                        <c:if test="${pa.index==1}"><div class="carousel-item active">
                                <img src="${i.url}" class="d-block w-100 slider" alt="anh1">
                            </div>
                        </c:if>
                        <c:if test="${pa.index!=1}">
                            <div class="carousel-item">
                                <img src="${i.url}" class="d-block w-100 slider" alt="anh1">
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
<!--                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>-->
            </div>
        </div>
        <div class="container content">
            <div class="row">
                <div class="col-md-3">
                    <h5>Price:${prod.price}/<i class="bi bi-ticket-perforated-fill"></i> </h5>
                    <a href="addtocartcontrol?aid=${idpro}" class="button_tour"> Đặt vé <i class="bi bi-ticket-perforated-fill"></i> </a>
                    <br>

                </div>
                <div class="col-md-9 review_content">

                    <h3>${prod.productname}</h3>   
                    <br>
                    <p>${prod.revew_product}</p>   
                </div>
            </div>
        </div>


        <div class="container-fuild fo">
            <div class="footer">
                <h6><i class="bi bi-info-circle"></i> Thông tin liên hệ</h6>
                <h6><i class="bi bi-telephone"></i> 0964302864</h6>
                <h6><i class="bi bi-envelope"></i> nguyenquangjkg@gmail.com</h6>
            </div>
        </div>
    </body>
</html>
