<%-- 
    Document   : orderdet
    Created on : Oct 28, 2022, 2:59:00 AM
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
    <link rel="stylesheet" href="<c:url value="/css/order.css"/>">
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
             <h1> Vé Đã Đặt</h1>
          </div>
          <div class="col-md-2">
           <c:if test="${acc!=null}">
                <c:if test="${acc.getRole_id()==0}">
                             <a href="#"><i class="bi bi-person-circle"></i>
          </a>
            <h5> ${sessionScope.usac.getName()} </h5>
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
                     <a href="touristcontrol?pid=${i.product_id}" class="btn btn-primary button_tour"> <i class="bi bi-cart-plus-fill"></i></a>
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
                  <a href="#"> Ve Da dat</a>
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
          </a>
            <h5> ${sessionScope.usac.getName()} </h5>
                </c:if>
                </c:if>
          </div>
        </div>      
      </div>
    <c:set var="o" value="${sessionScope.card}"/>
    <c:forEach items="${o.items}" var="i">
        
    
      <div class="container">
          
        <div class="row">
            
           <div class="col-md-6">
            <img src="${i.product.url}" alt="">
           </div>
            
            
           <div class="col-md-6">
            <div class="tour_booked">
                    <h5>${i.product.productname}</h5>
                    <form action="">
                    <label for="number_person">So luong ve: </label><br>   
                    <button class="button_tour"> <a  href="process?num=-1&id=${i.product.product_id}">-</a></button>
                    <input type="text" id="number_person" value="${i.quantity}">
                    <button class="button_tour"> <a  href="process?num=1&id=${i.product.product_id}">+</a></button>
                    
                    </form>
                    <h5>Tong hoa don: ${i.product.price * i.quantity} </h5>
                    <h6>Thoi gian nhan ve: </h6>
                    
                    <form action="process" method="post">
                        <input type="hidden" name ="id" value="${i.product.product_id}"/>
                        <input class="button_tour" type ="submit" value="Huy vé"/>      
                    </form>
                        <br>
                     <form action="buycontrol" method="post">
                        <input type="hidden" name ="id" value="${i.product.product_id}"/>
                        <input class="button_tour" type ="submit" value="Ðat vé"/>      
                    </form>
                    
            </div>
           </div>
        </div>
      </div>
     </c:forEach>               
                    
</body>
</html>