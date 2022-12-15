<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
          <div class="row">
            <div class="col-md-2 col-sm-2">
              <div class="logo">
                <a href="home">
                  <img src="images/logo.png" alt="FlatShop">
                </a>
              </div>
            </div>
            <div class="col-md-10 col-sm-10">
              <div class="header_top">
                <div class="row">
                  <div class="col-md-3">
                    <ul class="usermenu">
                    <div class="navbar-collapse collapse">
                  <ul class="nav navbar-nav">
                                      
                
                    <c:if test="${sessionScope.auth != null }">
                    <li class="nav-item">
                        <a class ="nav-link" href="LogoutControl" class="log">
                          Logout: <label> HELLO ${sessionScope.auth.user}</label>
                        </a>
                        
                      </li>
                    </c:if>
                      <c:if test="${sessionScope.auth == null }">
                    <li>
                        <a href="login.jsp" class="reg">
                         Login
                        </a>
                      </li>
                    </c:if>
                    <c:if test="${ sessionScope.auth.isAdmin == 1}">
                        	<li>
                        <a href="index-admin.jsp" class="reg">
                         Quyền Admin
                        </a>
                      </li>
                        </c:if>
                        <c:if test="${ sessionScope.auth.isSell == 1}">
                        	<li>
                        <a href="manager" class="reg">
                         Quyền người dùng
                        </a>
                      </li>
                        </c:if>
                    </ul>
                    </div>
                      
                    </ul>
                  </div>
                </div>
              </div>
              <div class="clearfix">
              </div>
              <div class="header_bottom">
                <ul class="option">
                  <li id="search" class="search">
                    <form action="search" method="post">
                      <input class="search-submit" type="submit" value="">
                      <input class="search-input" placeholder="Enter your search term..." type="text" value="" name="search">
                    </form>
                  </li>
                  <li class="option-cart">
                    <a href="cart.jsp" class="cart-icon">
                      cart 
                      <span class="cart_no">
                        ${cart_list.size() }
                      </span>
                    </a>
                  </li>
                </ul>
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">
                      Toggle navigation
                    </span>
                    <span class="icon-bar">
                    </span>
                    <span class="icon-bar">
                    </span>
                    <span class="icon-bar">
                    </span>
                  </button>
                </div>
                <div class="navbar-collapse collapse">
                  <ul class="nav navbar-nav">
                    <li class="active dropdown">
                      <a href="index.jsp" class="dropdown-toggle" data-toggle="dropdown">
                        Home
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        Giày Nam
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        Giày Nam
                      </a>
                    </li>
                    
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Phụ kiện
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        Quà tặng
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        Giới Thiệu
                      </a>
                    </li>
                    <li>
                      <a href="contact.jsp">
                        Liên Hệ
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>