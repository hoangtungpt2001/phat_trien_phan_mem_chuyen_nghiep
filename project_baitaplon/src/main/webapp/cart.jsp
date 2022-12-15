

<%@page import="dao.DAO"%>
<%@page import="entity.*"%>
<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	
	
	<%  

ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
List<Cart> cartProduct = null;
if (cart_list != null) {
	DAO pDao = new DAO();
	cartProduct = pDao.getCartProducts(cart_list);
	double total = pDao.getTotalCartPrice(cart_list);
	request.setAttribute("total", total);
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
    <link href="csss/style.css" rel="stylesheet" type="text/css">
    <!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js">
</script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js">
</script>
<![endif]-->
  </head>
  <body>
    <div class="wrapper">
      <div class="header">
      
      
      <jsp:include page="Menu.jsp"></jsp:include>
      
      
      
      
      <div class="clearfix">
      </div>
      <div class="container_fullwidth">
        <div class="container shopping-cart">
          <div class="row">
            <div class="col-md-12">
              <table class="shop-table">
                <thead>
                  <tr>
                    <th>
                      Sản phẩm
                    </th>
                    <th>
                      Thông tin
                    </th>
                    <th>
                      Số lượng
                    </th>
                    <th>
                      Giá
                    </th>
                    <th>
                      Xóa
                    </th>
                    
                  </tr>
                </thead>
                <tbody>
                <%
				if (cart_list != null) {
					for (Cart c : cartProduct) {%>
						
						<tr>
	                    <td>
	                      <img src="<%= c.getImage() %>" alt="">
	                    </td>
	                    <td>
	                      <div class="shop-details">
	                        <div class="productname">
	                          <%= c.getName() %>
	                        </div>
	                        <p>
	                          <img alt="" src="images/star.png">
	                        </p>
	                        <div class="color-choser">
	                          <span class="text">
	                            Màu sắc : 
	                          </span>
	                          <ul>
	                            <li>
	                              <a class="black-bg " href="#">
	                                black
	                              </a>
	                            </li>
	                            <li>
	                              <a class="red-bg" href="#">
	                                light red
	                              </a>
	                            </li>
	                          </ul>
	                        </div>
	                        <p>
	                          Kích thước : 
	                          <strong class="pcode">
	                            41
	                          </strong>
	                        </p>
	                      </div>
	                    </td>
	                    <td>
	                    <form action="oder" method="get" >
                      				
								
	                    				<input type="hidden" name="id" value="<%= c.getId()%>" class="form-input">
	                    				
	                    			
	                    			<a href="quantity-inc-dec?action=inc&id=<%=c.getId()%>" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">+</a><span><input type="text" name="quantity" class="form-control"  value="<%=c.getQuantity()%>" readonly></span>
	                      			
	                      			
										
										
										<span>
									<a href="quantity-inc-dec?action=dec&id=<%=c.getId()%>" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">-</a>
									</span>
									<span>
	                    <button >mua</button>
	                    </span>
	                    </form>
	                    </td>
	                    <td>
	                      <h5>
	                        <strong class="red">
	                          <%= c.getPrice() %>
	                        </strong>
	                      </h5>
	                    </td>
	                    <td>
	                      <a href="remove-from-cart?id=<%=c.getId() %>">
	                        <img src="images/remove.png" alt="">
	                      </a>
	                    
                    	
	                  </tr>
					<% }
				}
					
				%>
                  
                  
                </tbody>
                <tfoot>
                
                
                  
                </tfoot>
                
              </table>
              <div class="clearfix">
              </div>
					<div class="grandtotal">
                    <h5>
                      Tổng tiền:
                    </h5>
                    <span>
                      ${total } $
                      <a class="mx-3 btn btn-primary" href="cart-check-out">Check Out</a>
                    </span>
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
      <div class="footer">
        <div class="footer-info">
          <div class="container">
            <div class="row">
              <div class="col-md-3">
                <div class="footer-logo">
                  <a href="#">
                    <img src="images/logo.png" alt="">
                  </a>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <h4 class="title">
                  Thông tin liên hệ
                </h4>
                <p>
                  Trường Đại Học Quy Nhơn
                </p>
                <p>
                  SĐT: 0908629582
                </p>
                <p>
                  Email : HPBN@gmail.com
                </p>
              </div>
              <div class="col-md-3 col-sm-6">
                <h4 class="title">
                  Hỗ trợ khách hàng
                </h4>
                <ul class="support">
                  <li>
                    <a href="#">
                      Phương
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      Tùng
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      Ánh
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="copyright-info">
          <div class="container">
            <div class="row">
              <div class="col-md-6">
                <ul class="social-icon">
                  <li>
                    <a href="#" class="linkedin">
                    </a>
                  </li>
                  <li>
                    <a href="#" class="google-plus">
                    </a>
                  </li>
                  <li>
                    <a href="#" class="twitter">
                    </a>
                  </li>
                  <li>
                    <a href="#" class="facebook">
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
    <!-- Bootstrap core JavaScript==================================================-->
    <script type="text/javascript" src="js/jquery-1.10.2.min.js">
    </script>
    <script type="text/javascript" src="js/bootstrap.min.js">
    </script>
    <script defer src="js/jquery.flexslider.js">
    </script>
    <script type="text/javascript" src="js/jquery.carouFredSel-6.2.1-packed.js">
    </script>
    <script type="text/javascript" src="js/script.min.js" >
    </script>
  </body>
</html>