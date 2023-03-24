<%-- 
    Document   : admin
    Created on : Oct 29, 2022, 10:10:53 PM
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
        <link rel="stylesheet" href="<c:url value="/css/admin.css"/>">
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
                    <a href="#"><i class="bi bi-person-circle"></i>
                    </a>
                    <h5> ${sessionScope.acc.getName()} </h5>
                    <ul class="list-group list-group-numbered">
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="ms-2 me-auto">
                                <div class="">
                                    <a href="inforcontrol">Cai Dat Tai Khoan</a>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="ms-2 me-auto">
                                <div class="">
                                    <a href="homecot">Chế độ người dùng</a>
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
                </div>
            </div>      
        </div>
        <div class="container category">
            <ul class="nav nav-pills nav-justified">
                <li class="nav-item">
                    <a class="nav-link " aria-current="page" href="<c:url value= "admin?ca=0"/>">Quản lý tài khoản</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value= "admin?ca=1"/>">Quản lý sản phẩm</a>
                </li>
            </ul>
        </div>
        <div class="container content">

            <c:if test="${cate==0}">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">STT</th>
                            <th scope="col">Tài Khoản</th>
                            <th scope="col">Chức Năng</th>
                            <th scope="col">Cấp Quyền</th>
                            <th scope="col">Xóa Tài Khoản</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${account}" var="o">
                            <tr>
                                <td>${o.getAccount_id()} </td>
                                <td>${o.getName()} </td>
                                <td><c:if test="${o.getRole_id()==0}"> admin</c:if> <c:if test="${o.getRole_id()==1}"> user </c:if></td>
                                <td><a href="<c:url value="admin?type=2&acid=${o.getAccount_id()}&rol=${o.getRole_id()}"/>" ><i class="bi bi-sliders"></i></a></td>
                                <td><a onclick ="Delete2(${o.getAccount_id()})" href="<c:url value="admin?type=3&acid=${o.getAccount_id()}"/>" ><i class="bi bi-trash3-fill"></i></a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>    
            </c:if>

            <c:if test="${cate==1}">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">STT</th>
                            <th scope="col">Sản phẩm</th>
                            <th scope="col">Chỉnh sửa sản phẩm</th>
                            <th scope="col">Xóa Sản phẩm</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${product}" var="p">
                            <tr>
                                <td>${p.getProduct_id()} </td>
                                <td>${p.getProductname()} </td>
                                <td><a href="<c:url value="admin2?type2=2&poid=${p.getProduct_id()}"/>" ><i class="bi bi-sliders"></i></a></li></td>
                                <td><a onclick ="Delete(${p.getProduct_id()})" href="<c:url value="admin2?type2=3&poid=${p.getProduct_id()}"/>"><i class="bi bi-trash3-fill"></i></a></td>
                            </tr>   
                        </c:forEach>

                        <tr>
                            <td colspan="3"><a href="<c:url value="admin2?type2=1&poid=${p.getProduct_id()}"/>"> <i class="bi bi-plus-circle-fill"></i>  </a></td>
                        </tr>
                    </tbody>
                </table>  
            </c:if>

        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script>
            function Delete(id) {
                var option = confirm('Bạn chắc chắn muốn xóa sản phẩm này chứ ?');
                if (option === true) {
                    window.location.href = 'DeleteProduct?id=' + id;
                }
            }
            
            function Delete2(id) {
                var option = confirm('Bạn chắc chắn muốn tài khoản này chứ ?');
                if (option === true) {
                    window.location.href = 'deleteAccount?id=' + id;
                }
            }
        </script>
        <script src="js/scripts.js"></script>
    </body>
</html>
