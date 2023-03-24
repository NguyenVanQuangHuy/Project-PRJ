<%-- 
    Document   : information.jsp
    Created on : Oct 30, 2022, 4:01:12 AM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
                        <html>
                            <head>
                                <meta charset='utf-8'>
                                <meta name='viewport' content='width=device-width, initial-scale=1'>
                                <title>Snippet - BBBootstrap</title>
                                <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css' rel='stylesheet'>
                                <link href='#' rel='stylesheet'>
                                <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
                                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">                            
    <style>::-webkit-scrollbar {
                                  width: 8px;
                                }
                                /* Track */
                                ::-webkit-scrollbar-track {
                                  background: #f1f1f1; 
                                }
                                 
                                /* Handle */
                                ::-webkit-scrollbar-thumb {
                                  background: #888; 
                                }
                                
                                /* Handle on hover */
                                ::-webkit-scrollbar-thumb:hover {
                                  background: #555; 
                                } body {
    background: #01D28E;
}

.form-control:focus {
    box-shadow: none;
    border-color: #01D28E;
}

.profile-button {
    background: #01D28E;
    box-shadow: none;
    border: none
}

.profile-button:hover {
    background: #01D28E;
}

.profile-button:focus {
    background: #01D28E;
    box-shadow: none
}

.profile-button:active {
    background:#01D28E;
    box-shadow: none
}

.back:hover {
    color:#01D28E;
    cursor: pointer
}

.labels {
    font-size: 11px
}

.add-experience:hover {
    background: #01D28E;
    color: #fff;
    cursor: pointer;
    border: solid 1px#01D28E;
.bi-person-circle{ 
   font-size: 200px;
}

}</style>
                                </head>
                                <body className='snippet-body'>
                                <div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        <div class="col-md-3 border-right">
             <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold">${sessionScope.ifac.getName()}</span><span class="text-black-50"></span><span> </span></div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Cài Đặt Tài Khoản</h4>
                </div>
                <div class="row mt-2">
                    <c:if test="${ifac != null}">
                     <div class="col-md-12"><label class="labels">Họ và tên</label><input type="text" class="form-control" placeholder="" value="${sessionScope.ifac.getName()}"></div>   
                    </c:if>  
                </div>
                <div class="row mt-3">
                    <c:if test="${ifac != null}">
                    <div class="col-md-12"><label class="labels">Số điện thoại</label><input type="text" class="form-control" placeholder="" value="${sessionScope.ifac.getPhone()}"></div>   
                    </c:if>
                    <c:if test="${ifac != null}">
                    <div class="col-md-12"><label class="labels">Email</label><input type="text" class="form-control" placeholder="" value="${sessionScope.ifac.getEmail()}"></div>
                    </c:if>
                   
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <img src="" alt="">
        </div>
    </div>
</div>
</div>
</div>
                                <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js'></script>
                                <script type='text/javascript' src='#'></script>
                                <script type='text/javascript' src='#'></script>
                                <script type='text/javascript' src='#'></script>
                                <script type='text/javascript'>var myLink = document.querySelector('a[href="#"]');
                                myLink.addEventListener('click', function(e) {
                                  e.preventDefault();
                                });</script>
                            
                                </body>
                            </html>
