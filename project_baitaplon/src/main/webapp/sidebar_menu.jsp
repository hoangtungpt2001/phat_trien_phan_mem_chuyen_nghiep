<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
  <aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="https://static2.yan.vn/YanNews/202203/202203150551328043-4c92a17b-8427-421a-a237-7a396faf06cd.jpeg" width="200px" alt="User Image"></img>
      <div>
        <p class="app-sidebar__user-name"><b>HELLO ${sessionScope.acc.user}</b></p>
        <p class="app-sidebar__user-designation">Chào mừng bạn trở lại</p>
      </div>
    </div>
    <hr>
    <ul class="app-menu">
      
      
      <li><a class="app-menu__item " href="manager"><i
            class='app-menu__icon bx bx-purchase-tag-alt'></i><span class="app-menu__label">Quản lý sản phẩm</span></a>
      </li>
      
    </ul>
  </aside>