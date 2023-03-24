<%-- 
    Document   : addproduct
    Created on : Oct 30, 2022, 3:35:41 AM
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
    <link rel="stylesheet" href="../Project/css/addpro.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <title>BOOK TICKETS</title>
<body>
    <div class="container-fluid header">
        <div class="row headerrow">
          <div class="col-md-3">
             <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvWvheCDX5kjOom9I_ZUY-PqFiS0g-b2cXkw&usqp=CAU" alt="logo">
          </div>
          <div class="col-md-7">
             <h1>ADD PRODUCT</h1>
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
                </c:if>
          </div>
        </div>      
      </div>

    <div class="container justify-content-center">
        <c:if test="${ifopro == null}">
        <form action="addproduct" method="post"> 
        </c:if>
        <c:if test="${ifopro != null}">
         <form action="updatepro" method="get">        
        </c:if>
            
            <table id="adpro">
                <tr>
                    <th>Product name: </th>
                     <c:if test="${ifopro != null}">
                     <td><input type="text" value="${ifopro.getProductname()}" name="proname"></td>
                     </c:if>
                     <c:if test="${ifopro == null}" >
                      <td><input type="text" name="proname"></td>
                     </c:if>
                   
                </tr>
                <tr>
                    <th>Category: </th>
                     <c:if test="${ifopro != null}">
                     <td><input type="text" value="${ifopro.getCategory_id()}" name="catename"></td>
                     </c:if>
                     <c:if test="${ifopro == null}" >
                      <td><input type="text" name="catename">
                          <table>
                              <c:forEach items="${category}" var="ca">
                               <tr>
                                  <td>${ca.name}</td>
                              </tr>   
                              </c:forEach>
                          </table>
                      </td>
                     </c:if>
                      
                   
                </tr>
                <tr>
                    <th>Price</th>
                    <c:if test="${ifopro != null}">
                    <td><input type="number" value="${ifopro.getPrice()}" name="proprice"></td>
                     </c:if>
                      <c:if test="${ifopro == null}">
                      <td><input type="number" name="proprice"></td>
                     </c:if>
                    
                </tr>
                <tr>
                    <th>Review product:</th>
                    <c:if test="${ifopro != null}">
                    <td><textarea name="proreview" id="" cols="60" rows="10" placeholder="${ifopro.getRevew_product()}"></textarea></td>
                     </c:if>
                     <c:if test="${ifopro == null}">
                      <td><textarea name="proreview" id="" cols="30" rows="10"></textarea></td>
                     </c:if>
                    
                </tr>
                <tr>
                    <th>Image 1: </th>
                    <c:if test="${ifopro != null}">
                    <td><input type="text" value="${ifopro.getUrl()}" name="proimg1"></td>
                    </c:if>
                    <c:if test="${ifopro == null}">
                    <td><input type="text" name="proimg1"></td>
                    </c:if>
                    
                </tr>
                <tr>
                    <th>Image 2: </th>
                    <c:if test="${ifopro != null}">
                    <td><input type="text" value="${ifopro.getUrl()} " name="proimg2"></td>
                    </c:if>
                    <c:if test="${ifopro == null}">
                    <td><input type="text" name="proimg2"></td>
                    </c:if>
                </tr>
                <tr>
                    <th>Image 3: </th>
                    <c:if test="${ifopro != null}">
                    <td><input type="text" value="${ifopro.getUrl()} name="proimg3""></td>
                    </c:if>
                    <c:if test="${ifopro == null}">
                    <td><input type="text" name="proimg3"></td>
                    </c:if>
                </tr>
            </table>
            <c:if test="${ifopro == null}">
             <input type="submit" value="Them san pham" class="button_tour">   
             
            </c:if>
            <c:if test = "${mess !=null}">
                <h5 class="button_tour">${mess}</h5>
            </c:if>
            <c:if test="${ifopro != null}">
             <input type="submit" value="Cap nhat san pham" class="button_tour">      
            </c:if>
             <a href="<c:url value="admin2"/>" class="button_tour">Trở Về </a>
        </form>
    </div>
</body>
</html>