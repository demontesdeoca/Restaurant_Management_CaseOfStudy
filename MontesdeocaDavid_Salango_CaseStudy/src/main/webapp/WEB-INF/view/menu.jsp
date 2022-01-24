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
<script>
	document.getElementsByTagName("html")[0].className += " js";
</script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/scripts/sc/css/style_sc.css">
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
                                    <form method="post" id="contactForm" name="contactForm" class="contactForm" onsubmit="return validateSignUp()">
                                        <div class="formtitle">
                                            <p class="heading formunderline font-x2">Our Menu</p>
                                        </div>
                                        <!--####################################################################################################################################### -->
                                        <!--                                         <main class="cd-main container margin-top-xxl"> -->
                                        <!--                                             <div class="text-component text-center"> -->
                                        <!--                                                   <p class="flex flex-wrap flex-center flex-gap-xxs"> -->
                                        <!--                                                     <a href="#0" class="cd-add-to-cart js-cd-add-to-cart" data-price="25.99">Add To Cart</a> -->
                                        <!--                                                 </p> -->
                                        <!--                                             </div> -->
                                        <!--                                         </main> -->
                                        <!--####################################################################################################################################### -->
                                        <div class="row justify-content-center">
                                            <c:if test="${hideS1 == 'N'}">
                                                <section id="secSoups">
                                                    <p class="txt20">Soups</p>
                                                    <table class="table1">
                                                        <c:forEach var="tempItems" items="${soups}">
                                                            <tr>
                                                                <div class="table-menu-row">
                                                                    <a href="#" class="txt21">${tempItems.name}</a>
                                                                    <div class="line-dots-item-menu dots-pattern"></div>
                                                                    <div class="txt22">${tempItems.price}</div>
                                                                    <a href="#0" class="cd-add-to-cart js-cd-add-to-cart" data-name="${tempItems.name}" data-id="${tempItems.itemId}" data-price="${tempItems.price}">Add to Order</a>
                                                                </div>
                                                                <p class="txt23">${tempItems.description}</p>
                                                            </tr>
                                                        </c:forEach>
                                                    </table>
                                                </section>
                                            </c:if>
                                            <c:if test="${hideS2 == 'N'}">
                                                <section id="secAppetizers">
                                                    <br>
                                                    <p class="txt20">Appetizers</p>
                                                    <table class="table1">
                                                        <c:forEach var="tempItems" items="${appets}">
                                                            <tr>
                                                                <div class="table-menu-row">
                                                                    <a href="#" class="txt21">${tempItems.name}</a>
                                                                    <div class="line-dots-item-menu dots-pattern"></div>
                                                                    <div class="txt22">${tempItems.price}</div>
                                                                    <a href="#0" class="cd-add-to-cart js-cd-add-to-cart" data-name="${tempItems.name}" data-id="${tempItems.itemId}" data-price="${tempItems.price}">Add to Order</a>
                                                                </div>
                                                                <p class="txt23">${tempItems.description}</p>
                                                            </tr>
                                                        </c:forEach>
                                                    </table>
                                                </section>
                                            </c:if>
                                            <c:if test="${hideS3 == 'N'}">
                                                <section id="secEntree">
                                                    <br>
                                                    <p class="txt20">Entrées</p>
                                                    <table class="table1">
                                                        <c:forEach var="tempItems" items="${entrees}">
                                                            <tr>
                                                                <div class="table-menu-row">
                                                                    <a href="#" class="txt21">${tempItems.name}</a>
                                                                    <div class="line-dots-item-menu dots-pattern"></div>
                                                                    <div class="txt22">${tempItems.price}</div>
                                                                    <a href="#0" class="cd-add-to-cart js-cd-add-to-cart" data-name="${tempItems.name}" data-id="${tempItems.itemId}" data-price="${tempItems.price}">Add to Order</a>
                                                                </div>
                                                                <p class="txt23">${tempItems.description}</p>
                                                            </tr>
                                                        </c:forEach>
                                                    </table>
                                                </section>
                                            </c:if>
                                            <c:if test="${hideS4 == 'N'}">
                                                <section id="secSalads">
                                                    <br>
                                                    <p class="txt20">Salads</p>
                                                    <table class="table1">
                                                        <c:forEach var="tempItems" items="${salads}">
                                                            <tr>
                                                                <div class="table-menu-row">
                                                                    <a href="#" class="txt21">${tempItems.name}</a>
                                                                    <div class="line-dots-item-menu dots-pattern"></div>
                                                                    <div class="txt22">${tempItems.price}</div>
                                                                    <a href="#0" class="cd-add-to-cart js-cd-add-to-cart" data-name="${tempItems.name}" data-id="${tempItems.itemId}" data-price="${tempItems.price}">Add to Order</a>
                                                                </div>
                                                                <p class="txt23">${tempItems.description}</p>
                                                            </tr>
                                                        </c:forEach>
                                                    </table>
                                                </section>
                                            </c:if>
                                            <c:if test="${hideS5 == 'N'}">
                                                <section id="secDesserts">
                                                    <br>
                                                    <p class="txt20">Desserts</p>
                                                    <table class="table1">
                                                        <c:forEach var="tempItems" items="${desserts}">
                                                            <tr>
                                                                <div class="table-menu-row">
                                                                    <a href="#" class="txt21">${tempItems.name}</a>
                                                                    <div class="line-dots-item-menu dots-pattern"></div>
                                                                    <div class="txt22">${tempItems.price}</div>
                                                                    <a href="#0" class="cd-add-to-cart js-cd-add-to-cart" data-name="${tempItems.name}" data-id="${tempItems.itemId}" data-price="${tempItems.price}">Add to Order</a>
                                                                </div>
                                                                <p class="txt23">${tempItems.description}</p>
                                                            </tr>
                                                        </c:forEach>
                                                    </table>
                                                </section>
                                            </c:if>
                                            <c:if test="${hideS6 == 'N'}">
                                                <section id="secDrinks">
                                                    <br>
                                                    <p class="txt20">Drinks</p>
                                                    <table class="table1">
                                                        <c:forEach var="tempItems" items="${drinks}">
                                                            <tr>
                                                                <div class="table-menu-row">
                                                                    <a href="#" class="txt21">${tempItems.name}</a>
                                                                    <div class="line-dots-item-menu dots-pattern"></div>
                                                                    <div class="txt22">${tempItems.price}</div>
                                                                    <a href="#0" class="cd-add-to-cart js-cd-add-to-cart" data-name="${tempItems.name}" data-id="${tempItems.itemId}" data-price="${tempItems.price}">Add to Order</a>
                                                                </div>
                                                                <p class="txt23">${tempItems.description}</p>
                                                            </tr>
                                                        </c:forEach>
                                                    </table>
                                                </section>
                                            </c:if>
                                        </div>
                                    </form>
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
    <div class="cd-cart cd-cart--empty js-cd-cart">
        <a href="#0" class="cd-cart__trigger text-replace"> Cart
            <ul class="cd-cart__count">
                <!-- cart items count -->
                <li>0</li>
                <li>0</li>
            </ul> <!-- .cd-cart__count -->
        </a>
        <div class="cd-cart__content">
            <div class="cd-cart__layout">
                <header class="cd-cart__header">
                    <h2>Cart</h2>
                    <span class="cd-cart__undo"> Item removed. <a href="#0">Undo</a>
                    </span>
                </header>
                <form:form action="${pageContext.request.contextPath}/ordersCRUD/docheckout" modelAttribute="items" class="contactForm" method="POST">
                    <div class="cd-cart__body">
                        <ul>
                            <!-- products added to the cart will be inserted here using JavaScript -->
                        </ul>
                    </div>
                    <footer class="cd-cart__footer">
                        <button type="submit" class="cd-cart__checkout">
                            <em> Checkout - $ <span>0</span> <svg class="icon icon--sm" viewBox="0 0 24 24">
                                <g fill="none" stroke="currentColor">
                                <line stroke-width="2" stroke-linecap="round" stroke-linejoin="round" x1="3" y1="12" x2="21" y2="12" />
                                <polyline stroke-width="2" stroke-linecap="round" stroke-linejoin="round" points="15,6 21,12 15,18 " />
                                </g>
                            </svg>
                            </em>
                        </button>
                    </footer>
                </form:form>
            </div>
        </div>
        <!-- .cd-cart__content -->
    </div>
    <!-- cd-cart -->
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
    <script src="${pageContext.request.contextPath}/resources/scripts/sc/js/util.js"></script>
    <!-- util functions included in the CodyHouse framework -->
    <script src="${pageContext.request.contextPath}/resources/scripts/sc/js/main_sccc.js"></script>
    <!--################################################################################################# -->
</body>
</html>