<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/favicon.png">
    
    <title>
      Welcome to PTA SHOP
    </title>
    <link href="csss/bootstrap.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100' rel='stylesheet' type='text/css'>
    <link href="csss/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="csss/flexslider.css" type="text/css" media="screen"/>
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
        <div class="container">
          <div class="row">
            <div class="col-md-2 col-sm-2">
              <div class="logo">
                <a href="index.html">
                  <img src="images/logo.png" alt="FlatShop">
                </a>
              </div>
            </div>
            <div class="col-md-10 col-sm-10">
              <div class="header_top">
                <div class="row">
                  <div class="col-md-3">
                    <ul class="usermenu">
                      <li>
                        <a href="checkout.html" class="log">
                          ĐĂNG NHẬP
                        </a>
                      </li>
                      <li>
                        <a href="checkout2.html" class="reg">
                          ĐĂNG KÝ
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="clearfix">
              </div>
              <div class="header_bottom">
                <ul class="option">
                  <li id="search" class="search">
                    <form>
                      <input class="search-submit" type="submit" value="">
                      <input class="search-input" placeholder="Enter your search term..." type="text" value="" name="search">
                    </form>
                  </li>
                  <li class="option-cart">
                    <a href="#" class="cart-icon">
                      cart 
                      <span class="cart_no">
                        0
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
                      <a href="index.html" class="dropdown-toggle" data-toggle="dropdown">
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
                        Giày Nữ
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
                      <a href="contact.html">
                        Liên Hệ
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="clearfix">
        </div>
      </div>
      <div class="clearfix">
      </div>
      <div class="container_fullwidth">
        <div class="container">
          <div class="row">
            <div class="col-md-9">
              <div class="products-details">
              
                <div class="preview_image">
                
                  <div class="preview-small">
                    <img id="zoom_03" src="${detail.image}" data-zoom-image="${detail.image}" alt="">
                  </div>
                  
                </div>
                <div class="products-description">
                  <h5 class="name">
                    ${detail.name }
                  </h5>
                  <input type="hidden" class="btn-check" id="btn-check-2" checked autocomplete="off" >
<label class="btn btn-primary" for="btn-check-2">L</label>
                  
                  
                  <!-- <p>
                    <p style="font-weight:bold;">Kích thước:</p> 
                    <span>
                      38
                    </span>
                    <span>
                      39
                    </span>
                    <span>
                      40
                    </span>
                    <span>
                      41
                    </span>
                    <span>
                      42
                    </span>
                    <span>
                      43
                    </span>
                  </p> -->
                  <p>
                    <p style="font-weight:bold;">Màu sắc:</p> 
                    <span>
                      Red
                    </span>
                    <span>
                      Blue
                    </span>
                    <span>
                      Orange
                    </span>
                    <span>
                      Purple
                    </span>
                    <span>
                      Black
                    </span>
                  </p>
                  <hr class="border">
                  <div class="price" style="font-weight:bold;">
                    Giá sản phẩm : 
                    <span class="new_price">
                      ${detail.price }
                      <sup>
                        $
                      </sup>
                    </span>
                  </div>
                  <hr class="border">
                  <div class="wided">
                    <div class="qty">
                      <p style="font-weight: bold;">Số lượng</p>
                      <input type="number" min="0" value="1">
                      <p style="color: red;">Vui lòng chọn size</p>
                    </div>
                    <div class="button_group">
                      <button class="button" >
                        Thêm vào giỏ hàng
                      </button>
                    </div>
                  </div>
                  <div class="clearfix">
                  </div>
                  <hr class="border">
                  <img src="images/share.png" alt="" class="pull-right">
                  
                </div>
               
              </div>
              <div class="clearfix">
              </div>
              <div class="tab-box">
                <div id="tabnav">
                  <ul>
                    <li>
                      <a href="#">
                        Mô tả
                      </a>
                    </li>
                  </ul>
                </div>
                <div class="tab-content-wrap">
                  <div class="tab-content" id="Descraption">
                    <p style="font-size: 15px;">
                      Tương tự như Jordan 1 High Chicago Gold Cleat được phát hành vào năm 2017, Jordan 1 Low Golf Chicago tạo ra đường màu mang tính biểu tượng cho sân gôn. Nó có phần trên bằng da trắng mịn với lớp phủ màu đỏ và màu đen. Logo Wings màu đen ở gót chân nhằm tôn vinh logo Air Jordan đầu tiên từng được tạo ra. Ở phần đế, đế ngoài có rãnh màu đỏ giúp tăng thêm lực kéo và hỗ trợ cho những ngày dài trên sân cỏ.
                    </p>
                  </div>
                  <div class="tab-content" id="Reviews">
                    <form>
                      <table>
                        <thead>
                          <tr>
                            <th>
                              &nbsp;
                            </th>
                            <th>
                              1 star
                            </th>
                            <th>
                              2 stars
                            </th>
                            <th>
                              3 stars
                            </th>
                            <th>
                              4 stars
                            </th>
                            <th>
                              5 stars
                            </th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>
                              Quality
                            </td>
                            <td>
                              <input type="radio" name="quality" value="Blue"/>
                            </td>
                            <td>
                              <input type="radio" name="quality" value="">
                            </td>
                            <td>
                              <input type="radio" name="quality" value="">
                            </td>
                            <td>
                              <input type="radio" name="quality" value="">
                            </td>
                            <td>
                              <input type="radio" name="quality" value="">
                            </td>
                          </tr>
                          <tr>
                            <td>
                              Price
                            </td>
                            <td>
                              <input type="radio" name="price" value="">
                            </td>
                            <td>
                              <input type="radio" name="price" value="">
                            </td>
                            <td>
                              <input type="radio" name="price" value="">
                            </td>
                            <td>
                              <input type="radio" name="price" value="">
                            </td>
                            <td>
                              <input type="radio" name="price" value="">
                            </td>
                          </tr>
                          <tr>
                            <td>
                              Value
                            </td>
                            <td>
                              <input type="radio" name="value" value="">
                            </td>
                            <td>
                              <input type="radio" name="value" value="">
                            </td>
                            <td>
                              <input type="radio" name="value" value="">
                            </td>
                            <td>
                              <input type="radio" name="value" value="">
                            </td>
                            <td>
                              <input type="radio" name="value" value="">
                            </td>
                          </tr>
                        </tbody>
                      </table>
                      <div class="row">
                        <div class="col-md-6 col-sm-6">
                          <div class="form-row">
                            <label class="lebel-abs">
                              Your Name 
                              <strong class="red">
                                *
                              </strong>
                            </label>
                            <input type="text" name="" class="input namefild">
                          </div>
                          <div class="form-row">
                            <label class="lebel-abs">
                              Your Email 
                              <strong class="red">
                                *
                              </strong>
                            </label>
                            <input type="email" name="" class="input emailfild">
                          </div>
                          <div class="form-row">
                            <label class="lebel-abs">
                              Summary of You Review 
                              <strong class="red">
                                *
                              </strong>
                            </label>
                            <input type="text" name="" class="input summeryfild">
                          </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                          <div class="form-row">
                            <label class="lebel-abs">
                              Your Name 
                              <strong class="red">
                                *
                              </strong>
                            </label>
                            <textarea class="input textareafild" name="" rows="7" >
                            </textarea>
                          </div>
                          <div class="form-row">
                            <input type="submit" value="Submit" class="button">
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                  <div class="tab-content" >
                    <div class="review">
                      <p class="rating">
                        <i class="fa fa-star light-red">
                        </i>
                        <i class="fa fa-star light-red">
                        </i>
                        <i class="fa fa-star light-red">
                        </i>
                        <i class="fa fa-star-half-o gray">
                        </i>
                        <i class="fa fa-star-o gray">
                        </i>
                      </p>
                      <h5 class="reviewer">
                        Reviewer name
                      </h5>
                      <p class="review-date">
                        Date: 01-01-2014
                      </p>
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer a eros neque. In sapien est, malesuada non interdum id, cursus vel neque.
                      </p>
                    </div>
                    <div class="review">
                      <p class="rating">
                        <i class="fa fa-star light-red">
                        </i>
                        <i class="fa fa-star light-red">
                        </i>
                        <i class="fa fa-star light-red">
                        </i>
                        <i class="fa fa-star-half-o gray">
                        </i>
                        <i class="fa fa-star-o gray">
                        </i>
                      </p>
                      <h5 class="reviewer">
                        Reviewer name
                      </h5>
                      <p class="review-date">
                        Date: 01-01-2014
                      </p>
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer a eros neque. In sapien est, malesuada non interdum id, cursus vel neque.
                      </p>
                    </div>
                  </div>
                  <div class="tab-content" id="tags">
                    <div class="tag">
                      Add Tags : 
                      <input type="text" name="">
                      <input type="submit" value="Tag">
                    </div>
                  </div>
                </div>
              </div>
              <div class="clearfix">
              </div>
              <div id="productsDetails" class="hot-products">
                <h3 class="title">
                  <strong>
                    Sản phẩm hot
                  </strong>
                </h3>
                <div class="control">
                  <a id="prev_hot" class="prev" href="#">
                    &lt;
                  </a>
                  <a id="next_hot" class="next" href="#">
                    &gt;
                  </a>
                </div>
                <ul id="hot">
                  <li>
                     <div class="row">
                        <div class="col-md-3 col-sm-6">
                           <div class="products">
                              <div class="offer">New</div>
                              <div class="thumbnail"><a href="details.html"><img src="https://images.stockx.com/360/Air-Jordan-3-Retro-Fire-Red-2022/Images/Air-Jordan-3-Retro-Fire-Red-2022/Lv2/img01.jpg?fm=avif&auto=compress&w=576&dpr=1&updated_at=1663622420&h=384&q=57" alt="Product Name"></a></div>
                              <div class="productname">Jordan 4</div>
                              <h4 class="price">450.000 VNĐ</h4>
                              <div class="button_group"><button class="button add-cart" type="button">Thêm vào giỏ hàng</button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                          <div class="products">
                            <div class="offer">New</div>
                            <div class="thumbnail"><a href="details.html"><img src="https://images.stockx.com/360/Air-Jordan-3-Retro-Fire-Red-2022/Images/Air-Jordan-3-Retro-Fire-Red-2022/Lv2/img01.jpg?fm=avif&auto=compress&w=576&dpr=1&updated_at=1663622420&h=384&q=57" alt="Product Name"></a></div>
                            <div class="productname">Jordan 4</div>
                            <h4 class="price">450.000 VNĐ</h4>
                            <div class="button_group"><button class="button add-cart" type="button">Thêm vào giỏ hàng</button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
                         </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                          <div class="products">
                            <div class="offer">New</div>
                            <div class="thumbnail"><a href="details.html"><img src="https://images.stockx.com/360/Air-Jordan-3-Retro-Fire-Red-2022/Images/Air-Jordan-3-Retro-Fire-Red-2022/Lv2/img01.jpg?fm=avif&auto=compress&w=576&dpr=1&updated_at=1663622420&h=384&q=57" alt="Product Name"></a></div>
                            <div class="productname">Jordan 4</div>
                            <h4 class="price">450.000 VNĐ</h4>
                            <div class="button_group"><button class="button add-cart" type="button">Thêm vào giỏ hàng</button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
                         </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                          <div class="products">
                            <div class="offer">New</div>
                            <div class="thumbnail"><a href="details.html"><img src="https://images.stockx.com/360/Air-Jordan-3-Retro-Fire-Red-2022/Images/Air-Jordan-3-Retro-Fire-Red-2022/Lv2/img01.jpg?fm=avif&auto=compress&w=576&dpr=1&updated_at=1663622420&h=384&q=57" alt="Product Name"></a></div>
                            <div class="productname">Jordan 4</div>
                            <h4 class="price">450.000 VNĐ</h4>
                            <div class="button_group"><button class="button add-cart" type="button">Thêm vào giỏ hàng</button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
                         </div>
                        </div>
                     </div>
                  </li>
                  <li>
                     <div class="row">
                        <div class="col-md-3 col-sm-6">
                          <div class="products">
                            <div class="offer">New</div>
                            <div class="thumbnail"><a href="details.html"><img src="https://images.stockx.com/360/Air-Jordan-3-Retro-Fire-Red-2022/Images/Air-Jordan-3-Retro-Fire-Red-2022/Lv2/img01.jpg?fm=avif&auto=compress&w=576&dpr=1&updated_at=1663622420&h=384&q=57" alt="Product Name"></a></div>
                            <div class="productname">Jordan 4</div>
                            <h4 class="price">450.000 VNĐ</h4>
                            <div class="button_group"><button class="button add-cart" type="button">Thêm vào giỏ hàng</button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
                         </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                          <div class="products">
                            <div class="offer">New</div>
                            <div class="thumbnail"><a href="details.html"><img src="https://images.stockx.com/360/Air-Jordan-3-Retro-Fire-Red-2022/Images/Air-Jordan-3-Retro-Fire-Red-2022/Lv2/img01.jpg?fm=avif&auto=compress&w=576&dpr=1&updated_at=1663622420&h=384&q=57" alt="Product Name"></a></div>
                            <div class="productname">Jordan 4</div>
                            <h4 class="price">450.000 VNĐ</h4>
                            <div class="button_group"><button class="button add-cart" type="button">Thêm vào giỏ hàng</button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
                         </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                          <div class="products">
                            <div class="offer">New</div>
                            <div class="thumbnail"><a href="details.html"><img src="https://images.stockx.com/360/Air-Jordan-3-Retro-Fire-Red-2022/Images/Air-Jordan-3-Retro-Fire-Red-2022/Lv2/img01.jpg?fm=avif&auto=compress&w=576&dpr=1&updated_at=1663622420&h=384&q=57" alt="Product Name"></a></div>
                            <div class="productname">Jordan 4</div>
                            <h4 class="price">450.000 VNĐ</h4>
                            <div class="button_group"><button class="button add-cart" type="button">Thêm vào giỏ hàng</button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
                         </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                          <div class="products">
                            <div class="offer">New</div>
                            <div class="thumbnail"><a href="details.html"><img src="https://images.stockx.com/360/Air-Jordan-3-Retro-Fire-Red-2022/Images/Air-Jordan-3-Retro-Fire-Red-2022/Lv2/img01.jpg?fm=avif&auto=compress&w=576&dpr=1&updated_at=1663622420&h=384&q=57" alt="Product Name"></a></div>
                            <div class="productname">Jordan 4</div>
                            <h4 class="price">450.000 VNĐ</h4>
                            <div class="button_group"><button class="button add-cart" type="button">Thêm vào giỏ hàng</button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
                         </div>
                        </div>
                     </div>
                  </li>
               </ul>
              </div>
              <div class="clearfix">
              </div>
            </div>
            <div class="col-md-3">
              <div class="special-deal leftbar">
                <h4 class="title">
                  <strong>
                    Quyền lợi khách hàng
                  </strong>
                </h4>
                <div class="special-item">
                  <div class="product-image">
                    <a href="#">
                      <img src="images/products/thum/products-01.png" alt="">
                    </a>
                  </div>
                  <div class="product-info">
                    <p>
                      Cam kết hàng chính hãng 100%
					  Hoàn tiền 200% nếu phát hiện hàng giả
                    </p>
                  </div>
                </div>
                <div class="special-item">
                  <div class="product-image">
                    <a href="#">
                      <img src="images/products/thum/products-02.png" alt="">
                    </a>
                  </div>
                  <div class="product-info">
                    <p>
                      Bảo hành
					  Đổi trả trong 30 ngày
                    </p>
                  </div>
                </div>
                <div class="special-item">
                  <div class="product-image">
                    <a href="#">
                      <img src="images/products/thum/products-03.png" alt="">
                    </a>
                  </div>
                  <div class="product-info">
                    <p>
                      Giao hàng 24h
                    </p>
                  </div>
                </div>
                <div class="special-item">
                  <div class="product-image">
                    <a href="#">
                      <img src="images/products/thum/products-04.png" alt="">
                    </a>
                  </div>
                  <div class="product-info">
                    <p>
                      Miễn phí ship nội thành HĐ từ 500K
                    </p>
                  </div>
                </div>
                <div class="special-item">
                  <div class="product-image">
                    <a href="#">
                      <img src="images/products/thum/products-05.png" alt="">
                    </a>
                  </div>
                  <div class="product-info">
                    <p>
                      Miễn phí gói quà
                    </p>
                  </div>
                </div>
              </div>
              <div class="clearfix">
              </div>
              <div class="product-tag leftbar">
                <h3 class="title">
                  <strong>
                    Sản phẩm liên quan
                  </strong>
                </h3>
                <ul>
                  <li>
                    <a href="#">
                      Giày Nike
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      Giày Adidas
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      Giày Puma
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      Giày Vans
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      Giày Converse
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      Giày Jordan
                    </a>
                  </li>
                </ul>
              </div>
              <div class="clearfix">
              </div>
              <div class="clearfix">
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
    <!-- Bootstrap core JavaScript==================================================-->
    <script type="text/javascript" src="js/jquery-1.10.2.min.js">
    </script>
    <script type="text/javascript" src="js/bootstrap.min.js">
    </script>
    <script defer src="js/jquery.flexslider.js">
    </script>
    <script type="text/javascript" src="js/jquery.carouFredSel-6.2.1-packed.js">
    </script>
    <script type="text/javascript" src='js/jquery.elevatezoom.js'>
    </script>
    <script type="text/javascript" src="js/script.min.js" >
    </script>
  </body>
</html>