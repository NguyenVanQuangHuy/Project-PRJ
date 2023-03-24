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
    <link rel="stylesheet" href="../Project/css/home.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <title>Book Tickets</title>
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
                     <a href="touristcontrol?pid=${i.product_id}" class="btn btn-primary button_tour"> <i class="bi bi-cart-plus-fill"></i></a>
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
                  <a href=""> Ve Da dat</a>
                </div>
              </div>
              
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-start">
              <div class="ms-2 me-auto">
                <div class="">
                  <a href="">Lich Su Dat Ve</a>
                </div>
              </div>
              <span class="badge bg-primary rounded-pill">14</span>
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
                    
                    <c:if test="${acc==null}">
                        <a href="<c:url value="loginco" />" class="sig">Dang nhap</a>
                        <a href="<c:url value="signin" />" class="sig">Dang ky </a>
                    </c:if>
                
            </div>
          </div>      
        </div>
  
  <div class="container reviewst">
             <div class="row">
               <div class="col-md-6 ">
                 <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                   <div class="carousel-indicators">
                     <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                     <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                     <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                   </div>
                   <div class="carousel-inner">
                     <div class="carousel-item active">
                       <img src="https://mytourcdn.com/upload_images/Image/Location/8_1_2015/Thanh-co-son-tay-mytour-13.jpg" class="d-block w-100" alt="anh1">
                     </div>
                     <div class="carousel-item">
                       <img src="https://mytourcdn.com/upload_images/Image/Location/8_1_2015/Thanh-co-son-tay-mytour-15.jpg" class="d-block w-100" alt="...">
                     </div>
                     <div class="carousel-item">
                       <img src="https://vnn-imgs-f.vgcloud.vn/2021/11/27/10/257381957-1769504896573974-6141244143265703677-n.jpg" class="d-block w-100" alt="...">
                     </div>
                   </div>
                   <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                     <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                     <span class="visually-hidden">Previous</span>
                   </button>
                   <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                     <span class="carousel-control-next-icon" aria-hidden="true"></span>
                     <span class="visually-hidden">Next</span>
                   </button>
                 </div>
               </div>
               <div class="col-md-6">
                 <h2>Thị Xã Sơn Tây</h2>
                 <p>
                   Thị xã Sơn Tây nằm ở phía tây bắc thành phố Hà Nội, là cửa ngõ phía tây của thủ đô, 
                   cách trung tâm thành phố Hà Nội 45 km về phía tây.Sơn Tây có nhiều danh lam thắng cảnh, 
                   di tích lịch sử - văn hóa nổi tiếng như: Hồ Đồng Mô, thành cổ Sơn Tây, làng Việt cổ đá 
                   ong Đường Lâm, Chùa Mía, lễ hội đền Và...
                 </p>
                 
               </div>
             </div>
            
          </div>        
        <div class="container category">
              <div class="row">
                <div class="col-md-3 ca">
                  <form action="searchControl" method="get">
                      <input type="text"value="" name="search" placeholder="Search">
                      
                    <button type="submit"><i class="bi bi-search Search"></i></button>
                  </form>
                  <h6>Loại hình du lịch</h6>
                  
                      <c:forEach items="${category}" var="v">
                          <a href="categorycontrol?id=${v.category_id}" name="catein" class="cate_link">${v.name}</a>
                          <br>
                      </c:forEach>
              
                  
                  <h6>Xếp hạng</h6>
                  <form action="">
                    <input type="checkbox" value="5 sao" name="5 sao" >
                    <label for="">5 sao</label>
                    <br>
                    <input type="checkbox" value="4 sao" name ="4 sao">
                    <label for="">4 sao</label>
                    <br>
                    <input type="checkbox" value="3 sao" name = "3 sao">
                    <label for="">3 sao</label>
                    <br>
                    <input type="checkbox" value="2 sao" name ="2 sao">
                    <label for="">2 sao</label>
                    <br>
                    <input type="checkbox" value="1 sao" name = "1 sao">
                    <label for="">1 sao</label>
                  </form>
                   <select name ="sort" id="sortby" >
                    <option value="">Từ thấp đến cao</option>
                    <option value="">Từ cao đến thấp</option>
                   </select>
                </div>
                <div class="col-md-9">
                  <div class="container co">
                     <div class="row">
                         <c:forEach items="${product}" var="i">
                        <div class="col-md-4">
                        <div class="card" style="width: 18rem;">                         
                          <img src="${i.url}" class="card-img-top ig" alt="...">
                          <div class="card-body">
                              <h5 class="card-title"><a href="touristcontrol?pid=${i.product_id}">${i.productname}</a></h5>
                            <p class="card-text"></p>
                            <a href="touristcontrol?pid=${i.product_id}" class="btn btn-primary button_tour"> Đặt vé <i class="bi bi-ticket-perforated-fill"></i></a>
                          </div>
                        </div>
                      </div>
                          </c:forEach>
                     </div>
                  </div>
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