
<%@page import="dao.DAO"%>
<%@page import="entity.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
    
    
    
    
    
    
    
    
    
    
    <%  

ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
List<Cart> cartProduct = null;
if (cart_list != null) {
	DAO pDao = new DAO();
	cartProduct = pDao.getCartProducts(cart_list);
	request.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html>
<html>
  <head>
  
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/favicon.png">
    <title>
    
      Welcome to FlatShop
    </title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> 
    <link href="csss/bootstrap.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100' rel='stylesheet' type='text/css'>
    <link href="csss/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen"/>
    <link href="csss/style.css" rel="stylesheet">
  </head>
  <body>
    <div class="wrapper">
      <div class="header">
      

    

        
        
        
        <jsp:include page="Menu.jsp"></jsp:include>
        
        
        
        
        <div class="clearfix">
        </div>
      </div>
      <div class="clearfix">
      </div>
      <div class="container_fullwidth">
        <div class="container">
          <div class="row">
            <div class="col-md-3">
              <div class="category leftbar">
                <h3 class="title">
                  Thể Loại
                </h3>
                <ul>
                  <li>
                    <a href="#">
                      <c:forEach items="${ listc}" var="c">
                      	<li>${c.sex }</li>
                      </c:forEach>
                    </a>
                  </li>
                  
                </ul>
              </div>
              <div class="clearfix">
              </div>
              <div class="branch leftbar">
                <h3 class="title">
                  Thương Hiệu
                </h3>
                <ul>
                  <c:forEach items="${ listb}" var="b">
                      	<li class="list-group-item ${tag == b.cid? "active":"" }"><a href="category?cid=${b.cid }">${b.cname }</a></li>
                      </c:forEach>
                </ul>
              </div>
              
              
              
              
 <div class="branch leftbar">
                <label for="exampleSelect1" class="control-label">Thương hiệu</label>
                <select name="category" class="form-select" aria-label"Default select example">
                  <c:forEach items="${ listb}" var="b">
                      	<option>${b.cname } </option>
                  </c:forEach>
                </select>
              </div>
              
              
              
              

              
              
              
              <div class="clearfix">
              </div>
              <div class="product-tag leftbar">
                <h3 class="title">
                  Kích thước
                </h3>
                <ul>
                  <li>
                    <a href="#">
                      38
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      39
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      40
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      41
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      42
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      43
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      44
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      45
                    </a>
                  </li>
                </ul>
              </div>
              <div class="product-tag leftbar">
                <h3 class="title">
                  Màu sắc
                </h3>
                <ul>
                <li>
                  <a href="#">
                    RED
                  </a>
                </li>
                <li>
                  <a href="#">
                    BLUE
                  </a>
                </li>
                <li>
                  <a href="#">
                    YELLOW
                  </a>
                </li>
                <li>
                  <a href="#">
                    ORANGE
                  </a>
                </li>
                <li>
                  <a href="#">
                    PURPLE
                  </a>
                </li>
              </ul>
            </div>
              <div class="clearfix">
              </div>
              <div class="clearfix">
              </div>
            </div>
            <div class="col-md-9">
              <div class="banner">
                <div class="bannerslide" id="bannerslide">
                  <ul class="slides">
                    <li>
                      <a href="#">
                        <img src="images/banner-01.jpg" alt=""/>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <img src="images/banner-02.jpg" alt=""/>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="clearfix">
              </div>
              <div class="products-grid">
                <div class="toolbar">
                  <div class="pager">
                    <a href="#" class="prev-page">
                      <i class="fa fa-angle-left">
                      </i>
                    </a>
                    <a href="#" class="active">
                      1
                    </a>
                    <a href="#">
                      2
                    </a>
                    <a href="#">
                      3
                    </a>
                    <a href="#" class="next-page">
                      <i class="fa fa-angle-right">
                      </i>
                    </a>
                  </div>
                </div>
                <div class="clearfix">
                </div>
                <div class="row">
                 <c:forEach items="${lista}" var="a">
                      <div class="col-md-3 col-sm-6">
                           <div class="products">
                              <div class="offer">${a.name}</div>
                              <div class="thumbnail"><a href="detail?pid=${a.id }"><img src="${a.image} " alt="Product Name"></a></div>
                              <div class="productname">${a.title}</div>
                              <h4 class="price">${a.price}
                              		<sup>
                        				$
                      		        </sup>
                              </h4>
                              <a class="btn btn-dark" href="addtocart?id=${a.id }">Add to Cart</a> 
                              <a class="btn btn-primary" href="#">Buy Now</a>
                           </div>
                           </div>
                       </c:forEach>
                </div>
                <div class="clearfix">
                </div>
                <div class="toolbar">
                  <div class="pager">
                    <a href="#" class="prev-page">
                      <i class="fa fa-angle-left">
                      </i>
                    </a>
                    <a href="#" class="active">
                      1
                    </a>
                    <a href="#">
                      2
                    </a>
                    <a href="#">
                      3
                    </a>
                    <a href="#" class="next-page">
                      <i class="fa fa-angle-right">
                      </i>
                    </a>
                  </div>
                </div>
                <div class="clearfix">
                </div>
              </div>
            </div>
          </div>
          <div class="clearfix">
          </div>
          <div class="our-brand">
            <h3 class="title">
              <strong>
                Thương hiệu
              </strong>
            </h3>
            <div class="control">
              <a id="prev_brand" class="prev" href="#">
                &lt;
              </a>
              <a id="next_brand" class="next" href="#">
                &gt;
              </a>
            </div>
            <ul id="braldLogo">
              <li>
                <ul class="brand_item">
                  <li>
                    <a href="#">
                      <div class="brand-logo">
                        <img src="images/jordan.png" alt="">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="brand-logo">
                        <img src="images/nike.png" alt="">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="brand-logo">
                        <img src="images/adidas.png" alt="">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="brand-logo">
                        <img src="images/vans.png" alt="">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="brand-logo">
                        <img src="images/converse.png" alt="">
                      </div>
                    </a>
                  </li>
                </ul>
              </li>
              <li>
                <ul class="brand_item">
                  <li>
                    <a href="#">
                      <div class="brand-logo">
                        <img src="images/jordan.png" alt="">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="brand-logo">
                        <img src="images/adidas.png" alt="">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="brand-logo">
                        <img src="images/nike.png" alt="">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="brand-logo">
                        <img src="images/converse.png" alt="">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="brand-logo">
                        <img src="images/vans.png" alt="">
                      </div>
                    </a>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="clearfix">
      </div>
      <jsp:include page="Footer.jsp"></jsp:include> 
    </div>
    <script type="text/javascript" src="js/jquery-1.10.2.min.js">
    </script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js">
    </script>
    <script type="text/javascript" src="js/bootstrap.min.js">
    </script>
    <script defer src="js/jquery.flexslider.js">
    </script>
    <script type="text/javascript" src="js/jquery.sequence-min.js">
    </script>
    <script type="text/javascript" src="js/jquery.carouFredSel-6.2.1-packed.js">
    </script>
    <script type="text/javascript" src="js/script.min.js" >
    </script>
  </body>
</html>