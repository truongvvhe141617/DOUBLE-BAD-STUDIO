<%-- 
    Document   : container
    Created on : Jan 24, 2021, 11:52:58 PM
    Author     : Vuong Van Truong
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Home | E-Shopper</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
        <style>
     
            select {
    width: 100%;
    background: #eceff8;
    border: 2px solid #eceff8;
    height: 45px;
    padding-left: 10px;
    box-shadow: none;
    font-size: 14px;
    color: #626262;
}
button, input, select, textarea {
    font-family: inherit;
    font-size: inherit;
    line-height: inherit;
}
.toolbar-shorter  option:hover {
      background-color: black;
    }
button, select {
    text-transform: none;
}
button, input, optgroup, select, textarea {
    margin: 0;
    font: inherit;
    color: inherit;
}
#sort {
    width: 150px;
   margin-bottom: 10px;
   border-radius: 5px;
}


        </style>
    </head><!--/head-->
    <body>
        <section>
            <div class="container">
                <form action="sort" method="post">    
                   
<!--                        <h2 style="text-transform: uppercase;font-weight: 700;padding-left: 80px;font-size: 18px; font-family: 'Roboto', sans-serif;color: #FE980F">Sort Product</h2>   
                        <input style="margin-right: 10px;color: #696763;
                               font-family: 'Roboto', sans-serif;
                               font-size: 14px;
                               text-transform: uppercase;" type="radio" name="radio" checked=""value="${list}"> Ascending with price                         
                        <input style="color: #696763;
                               text-transform: uppercase;" type="radio" name="radio" value="${list1}"> Descending with price-->
             
                    <div class="toolbar-shorter ">
                        <label>Sắp xếp:</label>
                        <select id="sort" class="wide sort-by custom-dropdown__select custom-dropdown__select--white">
                            <option value="manual">Sản phẩm nổi bật</option>
                            <option value="${requestScope.list}">Giá: Tăng dần</option>
                            <option value="${requestScope.list1}">Giá: Giảm dần</option>
                            <option value="title-ascending">Tên: A-Z</option>
                            <option value="title-descending">Tên: Z-A</option>
                            <option value="created-ascending">Cũ nhất</option>
                            <option value="created-descending">Mới nhất</option>
                            <option value="best-selling">Bán chạy nhất</option>
                        </select>
                    </div>
              
                 </form>
                
                <div class="row">
                    
                   <div class="col-sm-3">
					<div class="left-sidebar">
						<h2>Category</h2>
						<div class="panel-group category-products" id="accordian"><!--category-productsr-->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Sportswear
										</a>
									</h4>
								</div>
								<div id="sportswear" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="#">Nike </a></li>
											<li><a href="#">Under Armour </a></li>
											<li><a href="#">Adidas </a></li>
											<li><a href="#">Puma</a></li>
											<li><a href="#">ASICS </a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#mens">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Mens
										</a>
									</h4>
								</div>
								<div id="mens" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="#">Fendi</a></li>
											<li><a href="#">Guess</a></li>
											<li><a href="#">Valentino</a></li>
											<li><a href="#">Dior</a></li>
											<li><a href="#">Versace</a></li>
											<li><a href="#">Armani</a></li>
											<li><a href="#">Prada</a></li>
											<li><a href="#">Dolce and Gabbana</a></li>
											<li><a href="#">Chanel</a></li>
											<li><a href="#">Gucci</a></li>
										</ul>
									</div>
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#womens">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Womens
										</a>
									</h4>
								</div>
								<div id="womens" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="#">Fendi</a></li>
											<li><a href="#">Guess</a></li>
											<li><a href="#">Valentino</a></li>
											<li><a href="#">Dior</a></li>
											<li><a href="#">Versace</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">Kids</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">Fashion</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">Households</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">Interiors</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">Clothing</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">Bags</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">Shoes</a></h4>
								</div>
							</div>
						</div><!--/category-products-->
					
						<div class="brands_products"><!--brands_products-->
							<h2>Brands</h2>
							<div class="brands-name">
								<ul class="nav nav-pills nav-stacked">
                                                                    <c:forEach items="${listC}" var="c">
                                                                        <li><a href="search?categoriesId=${c.categoriesId}"> <span class="pull-right">(16)</span>${c.categoriesName}</a></li>  
                                                                    </c:forEach>
									
									
									
								</ul>
							</div>
						</div><!--/brands_products-->
						
						<div class="price-range"><!--price-range-->
							<h2>Price Range</h2>
							<div class="well text-center">
								 <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
								 <b class="pull-left">$ 0</b> <b class="pull-right">$ 600</b>
							</div>
						</div><!--/price-range-->
						
						<div class="shipping text-center"><!--shipping-->
							<img src="images/home/shipping.jpg" alt="" />
						</div><!--/shipping-->
					
					</div>
				</div>
                      
                     
					
                    <div class="col-sm-9 padding-right">
                        
                        <div class="features_items" ><!--features_items-->

                            <c:forEach items="${requestScope.listP}" var="p">
                          <a href="product?productId=${p.productId}"> 
                                    <div class="col-sm-4">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center" >
                                                    <img src="${p.images}" alt=""style="width: 86%;height:74%" />
                                                    <h2 style="color: #910000;">$${p.price}</h2>
                                                    <p style="font-weight: bold; font-size: 16px;">${p.productName}</p>
                                                    <c:if test="${sessionScope.user == null}">
                                                        <a href="login.jsp" class="btn btn-default add-to-cart" ><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                    </c:if>
                                                    <c:if test="${sessionScope.user != null}">
                                                        <a href="addtocart?productId=${p.productId}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                    </c:if>   
                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                </a>                                                         
                            </c:forEach>    
                        </div><!--features_items-->

                    </div>
                </div>
                <ul class="pagination">
                    <c:forEach begin="1" end="${requestScope.totalPage}" var="i">
                        <li class="
                            <c:if test="${requestScope.pageIndex == i}">
                                active
                            </c:if>
                            ">
                            <c:if test="${requestScope.page == 1}">
                                <a href="home?pageIndex=${i}">${i}</a>
                            </c:if>

                            <c:if test="${requestScope.page == 2}">
                                <a href="search?pageIndex=${i}&txtSearch=${txtSearch}">${i}</a>
                            </c:if>
                        </li>
                    </c:forEach>
                    <li><a href="">&raquo;</a></li>

                </ul>


            </div>
        </section>

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/price-range.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
        
    </body>
</html>