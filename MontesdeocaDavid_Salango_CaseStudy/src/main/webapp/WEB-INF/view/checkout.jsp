<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title>Salango</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="${pageContext.request.contextPath}/resources/styles/styles.css" rel="stylesheet" type="text/css" media="all">
<link href="${pageContext.request.contextPath}/resources/scripts/lightbox/lightbox.min.css" rel="stylesheet" type="text/css" media="all">
<!-- ############################################################################################################ -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/scripts/co/style_co.css">
<!-- ############################################################################################################ -->
</head>
<body id="top">
    <div class="wrapper row0">
        <div id="topbar" class="hoc clear">
            <div class="fl_left">
                <!-- ################################################################################################ -->
                <ul class="nospace">
                    <li><i class="fas fa-phone rgtspace-5"></i> +1 (929) 478 3654</li>
                    <li><i class="far fa-envelope rgtspace-5"></i> info@salango.com</li>
                </ul>
                <!-- ################################################################################################ -->
            </div>
            <div class="fl_right">
                <!-- ################################################################################################ -->
                <ul class="nospace">
                    <li><c:if test="${userlogged == 'N'}">
                            <a href="${pageContext.request.contextPath}/clientsCRUD/login" title="Login"> <i class="fas fa-sign-in-alt"> Login</i>
                            </a>
                        </c:if> <c:if test="${userlogged == 'Y'}">Hello ${username} <a href="${pageContext.request.contextPath}/clientsCRUD/logout" title="Log out"> <i class="fas fa-sign-out-alt"> Log out</i>
                            </a>
                        </c:if></li>
                    <li><c:if test="${userlogged == 'N'}">
                            <a href="${pageContext.request.contextPath}/clientsCRUD/signup" title="Sign Up"> <i class="fas fa-edit"> Sign Up</i>
                            </a>
                        </c:if></li>
                    <li id="searchform">
                        <div>
                            <form action="#" method="post">
                                <fieldset>
                                    <legend>Quick Search:</legend>
                                    <input type="text" placeholder="Enter search term&hellip;">
                                    <button type="submit">
                                        <i class="fas fa-search"></i>
                                    </button>
                                </fieldset>
                            </form>
                        </div>
                    </li>
                </ul>
                <!-- ################################################################################################ -->
            </div>
        </div>
    </div>
    <!-- ################################################################################################ -->
    <!-- Top Background Image Wrapper -->
    <div class="bgded overlay row4 background_main">
        <!-- ################################################################################################ -->
        <div class="wrapper row1">
            <header id="header" class="hoc clear">
                <div id="logo" class="fl_left">
                    <!-- ################################################################################################ -->
                    <h1 class="mainname">
                        <a href="${pageContext.request.contextPath}/init/main">SALANGO</a>
                    </h1>
                    <!-- ################################################################################################ -->
                </div>
                <nav id="mainav" class="fl_right">
                    <!-- ################################################################################################ -->
                    <ul class="clear">
                        <li class="active"><a href="${pageContext.request.contextPath}/init/main">Home</a></li>
                        <li><a class="drop" href="${pageContext.request.contextPath}/itemsCRUD/menu"> <i class="fas fa-utensils"></i> Menu
                        </a>
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/itemsCRUD/menuopt?menopt=appetizer">Appetizers</a></li>
                                <li><a href="${pageContext.request.contextPath}/itemsCRUD/menuopt?menopt=soup">Soups</a></li>
                                <li><a href="${pageContext.request.contextPath}/itemsCRUD/menuopt?menopt=salad">Salads</a></li>
                                <li><a href="${pageContext.request.contextPath}/itemsCRUD/menuopt?menopt=entree">Entrée</a></li>
                                <li><a href="${pageContext.request.contextPath}/itemsCRUD/menuopt?menopt=dessert">Desserts</a></li>
                                <li><a href="${pageContext.request.contextPath}/itemsCRUD/menuopt?menopt=drink">Drinks</a></li>
                            </ul></li>
                        <li><a href="#"> <i class="fas fa-calendar-check"></i> Reservations
                        </a></li>
                        <li><a href="#"> <i class="far fa-map"></i> Hours
                        </a></li>
                        <li><a href="#"> <i class="fas fa-address-card"></i> About Us
                        </a></li>
                        <li><a href="#"> <i class="fas fa-phone"></i> Contact
                        </a></li>
                        <c:if test="${loginadmin == 'Y'}">
                            <li><a class="drop" href="#"> <i class="fas fa-cogs"></i> Settings
                            </a>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/admin/menuCRUD">Menu</a></li>
                                    <li><a href="${pageContext.request.contextPath}/admin/ordersR">Orders</a></li>
                                    <li><a href="${pageContext.request.contextPath}/admin/clients">Clients</a></li>
                                </ul></li>
                        </c:if>
                        <li><a href="#"> <i class="fab fa-facebook-f"></i>
                        </a></li>
                        <li><a href="#"> <i class="fab fa-twitter"></i>
                        </a></li>
                        <li><a href="#"> <i class="fab fa-instagram"></i>
                        </a></li>
                    </ul>
                    <!-- ################################################################################################ -->
                </nav>
            </header>
        </div>
        <!-- ################################################################################################ -->
    </div>
    <!-- End Top Background Image Wrapper -->
    <div class="row3">
        <main class="hoc clear">
            <div class="row">
                <div class="col-md-12">
                    <div class="wrapper">
                        <div class="row no-gutters mb-5">
                            <div class="col-md-7">
                                <div class="contact-wrap w-100 p-md-5 p-4">
                                    <form:form action="placeorder" modelAttribute="items" class="contactForm" method="POST">
                                        <div class="formtitle">
                                            <p class="heading formunderline font-x2">Check Out</p>
                                        </div>
                                        <div class="shopping-cart">
                                            <div class="column-labels">
                                                <!--<label class="product-image">Image</label> -->
                                                <label class="product-details">Product</label>
                                                <label class="product-price">Price</label>
                                                <label class="product-quantity">Quantity</label>
                                                <label class="product-removal">Remove</label>
                                                <label class="product-line-price">Total</label>
                                            </div>
                                            <!--<div class="product-image"> -->
                                            <!--<img src=""> -->
                                            <!--</div> -->
                                            <c:forEach var="tempItems" items="${items}">
                                                <div class="product">
                                                    <div class="product-details">
                                                        <input type="hidden" name="itemid" value="${tempItems.itemId}" />
                                                        <div class="product-title">${tempItems.name}</div>
                                                        <p class="product-description">${tempItems.description}</p>
                                                    </div>
                                                    <div class="product-price">${tempItems.price}</div>
                                                    <div class="product-quantity">
                                                        <input type="number" name="quantity" value="${tempItems.image}" min="1" />
                                                    </div>
                                                    <div class="product-removal">
                                                        <button class="remove-product">Remove</button>
                                                    </div>
                                                    <div class="product-line-price">${tempItems.price}</div>
                                                </div>
                                            </c:forEach>
                                            <div class="totals">
                                                <div class="totals-item">
                                                    <label>Subtotal</label>
                                                    <div class="totals-value" id="cart-subtotal">71.97</div>
                                                </div>
                                                <div class="totals-item">
                                                    <label>Tax (5%)</label>
                                                    <div class="totals-value" id="cart-tax">3.60</div>
                                                </div>
                                                <div class="totals-item">
                                                    <label>Shipping</label>
                                                    <div class="totals-value" id="cart-shipping">15.00</div>
                                                </div>
                                                <div class="totals-item totals-item-total">
                                                    <label>Grand Total</label>
                                                    <div class="totals-value" id="cart-total">90.57</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row-centered">
                                            <div class="form-group">
                                                <input type="submit" name="action" value="Place Order" class="btn">
                                                <div class="submitting"></div>
                                                <input type="submit" name="action" value="cancel" class="btn">
                                                <div class="submitting"></div>
                                            </div>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ################################################################################################ -->
            <!-- / main body -->
            <div class="clear"></div>
        </main>
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div class="wrapper coloured">
        <section id="ctdetails" class="hoc clear">
            <!-- ################################################################################################ -->
            <ul class="nospace clear">
                <li class="one_quarter first">
                    <div class="block clear">
                        <a href="#"> <i class="fas fa-phone"></i>
                        </a> <span> <strong>Give us a call:</strong> +1 (929) 478 3654
                        </span>
                    </div>
                </li>
                <li class="one_quarter">
                    <div class="block clear">
                        <a href="#"> <i class="fas fa-envelope"></i>
                        </a> <span> <strong>Send us a mail:</strong> info@salango.com
                        </span>
                    </div>
                </li>
                <li class="one_quarter">
                    <div class="block clear">
                        <a href="#"> <i class="fas fa-clock"></i>
                        </a> <span> <strong> Monday - Saturday:</strong> 08.00am - 18.00pm
                        </span>
                    </div>
                </li>
                <li class="one_quarter">
                    <div class="block clear">
                        <a href="#"> <i class="fas fa-map-marker-alt"></i>
                        </a> <span> <strong>Come visit us:</strong> Directions to <a href="#">our location</a>
                        </span>
                    </div>
                </li>
            </ul>
            <!-- ################################################################################################ -->
        </section>
    </div>
    <div class="wrapper row5">
        <div id="copyright" class="hoc clear">
            <!-- ################################################################################################ -->
            <p class="fl_left">
                Copyright &copy; 2021 - All Rights Reserved - <a href="#">D'montes</a>
            </p>
            <p class="fl_right">
                <a target="_blank" href="" title=""></a>
            </p>
            <!-- ################################################################################################ -->
        </div>
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!--################################################################################################# -->
    <!--################################################################################################# -->
    <a id="backtotop" href="#top"> <i class="fas fa-chevron-up"></i>
    </a>
    <!-- JAVASCRIPTS -->
    <script src="${pageContext.request.contextPath}/resources/scripts/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/scripts/jquery.backtotop.js"></script>
    <!--    <script src="layout/scripts/jquery.mobilemenu.js"></script>-->
    <script src="${pageContext.request.contextPath}/resources/scripts/lightbox/lightbox.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/scripts/jscripts.js"></script>
    <!--################################################################################################# -->
    <script src="${pageContext.request.contextPath}/resources/scripts/co/script_co.js"></script>
    <!--################################################################################################# -->
</body>
</html>