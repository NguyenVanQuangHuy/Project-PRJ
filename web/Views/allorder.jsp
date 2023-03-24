<%-- 
    Document   : allorder
    Created on : Nov 7, 2022, 4:38:07 AM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="<c:url value="/css/admin.css"/>">
    </head>
    <body>
         <div class="container content">

           
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">STT</th>
                            <th scope="col">Ngay Dat</th>
                            <th scope="col">Gia Tien</th>
                            <th scope="col">Hien trang</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listo}" var="l">
                            <tr>
                                <td>${l.getOrder_id()} </td>
                                <td>${l.getOrder_date()} </td>
                                <td>${l.getTotal_price()} </td>
                                <td><c:if test="${l.getStatus() == 1}">Đặt vé thành công</c:if> </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>    
        

            

        </div>
    </body>
</html>
