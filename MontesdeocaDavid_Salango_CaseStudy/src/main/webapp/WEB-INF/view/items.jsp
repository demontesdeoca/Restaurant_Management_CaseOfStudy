<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title>Salango</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="${pageContext.request.contextPath}/resources/styles/styles.css" rel="stylesheet" type="text/css" media="all">
<link href="${pageContext.request.contextPath}/resources/scripts/lightbox/lightbox.min.css" rel="stylesheet" type="text/css" media="all">
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
                        </c:if> <c:if test="${userlogged == 'Y'}"> Hello ${username}  <a href="${pageContext.request.contextPath}/clientsCRUD/logout" title="Log out"> <i class="fas fa-sign-out-alt"> Log out</i>
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
                        <li><a href="#"> <i class="far fa-map"></i> Hours & Location
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
<%--                                 onsubmit="${validate}" --%>
                                    <form:form action="dopost" modelAttribute="items" class="contactForm" method="POST">
                                        <div class="formtitle">
                                            <p class="heading formunderline font-x2">Menu Setting</p>
                                        </div>
                                        <div class="row justify-content-center">
                                            <div class="cell-2">
                                                <div class="form-group">
                                                    <label class="label" for="fname">Id</label>
                                                    <form:input path="itemId" readonly="true" type="text" class="form-input" name="itemId" id="itemId" placeholder="ItemId" />
                                                    <label class="labelmsg" id="msgId"></label>
                                                </div>
                                            </div>
                                            <div class="cell-2">
                                                <div class="form-group">
                                                    <label class="label" for="flastname">Name</label>
                                                    <form:input path="name" type="text" class="form-input" name="name" id="name" placeholder="Name" />
                                                    <label class="labelmsg" id="msgName"></label>
                                                </div>
                                            </div>
                                            <div class="cell-1">
                                                <div class="form-group">
                                                    <label class="label" for="description">Description</label>
                                                    <form:input path="description" type="text" rows="5" cols="30" class="form-input" name="description" id="description" placeholder="description" />
                                                    <label class="labelmsg" id="msgDescription"></label>
                                                </div>
                                            </div>
                                            <div class="cell-2">
                                                <div class="form-group">
                                                    <label class="label" for="type">Type</label>
                                                    <form:select path="type" id="type" name="type" class="form-input">
                                                        <c:if test="${action == 'Save'}">
                                                            <form:option value="0" selected="selected">Select One</form:option>
                                                        </c:if>
                                                        <c:if test="${action != 'Save'}">
                                                            <option value="0">Select One</option>
                                                        </c:if>
                                                        <form:option value="SOUPS">SOUPS</form:option>
                                                        <form:option value="APPETIZER">APPETIZER</form:option>
                                                        <form:option value="ENTREE">ENTRÉE</form:option>
                                                        <form:option value="DESSERT">DESSERT</form:option>
                                                        <form:option value="SALAD">SALAD</form:option>
                                                        <form:option value="DRINK">DRINK</form:option>
                                                    </form:select>
                                                    <label class="labelmsg" id="msgType"></label>
                                                </div>
                                            </div>
                                            <div class="cell-2">
                                                <div class="form-group">
                                                    <label class="label" for="price">Price</label>
                                                    <form:input path="price" type="text" class="form-input" name="price" id="price" placeholder="price" />
                                                    <label class="labelmsg" id="msgPrice"></label>
                                                </div>
                                            </div>
                                            <div class="cell-3">
                                                <div class="form-group">
                                                    <form:input type="hidden" path="deleted" id="deleted" name="deleted" value="" />
                                                    <label class="label" for="fdeleted">Deleted</label>
                                                    <c:if test="${deleted == 'Y'}">
                                                        <input type="checkbox" name="chkdeleted" id="chkdeleted" value="deleted" checked />
                                                    </c:if>
                                                    <c:if test="${deleted == 'N'}">
                                                        <input type="checkbox" name="chkdeleted" id="chkdeleted" value="deleted" />
                                                    </c:if>
                                                    <label class="labelmsg" id="msgDOB"></label>
                                                </div>
                                            </div>
                                            <div class="cell-3"></div>
                                            <div class="cell-3"></div>
                                            <div class="row-centered">
                                                <div class="form-group">
                                                    <input type="submit" name="action" value="${action}" onclick="${validate}" class="btn">
                                                    <div class="submitting"></div>
                                                    <input type="submit" name="action" value="cancel" class="btn">
                                                    <div class="submitting"></div>
                                                </div>
                                                <br>
                                                <h2>${message}</h2>
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
    <a id="backtotop" href="#top"> <i class="fas fa-chevron-up"></i>
    </a>
    <!-- JAVASCRIPTS -->
    <script src="${pageContext.request.contextPath}/resources/scripts/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/scripts/jquery.backtotop.js"></script>
    <!--    <script src="layout/scripts/jquery.mobilemenu.js"></script>-->
    <script src="${pageContext.request.contextPath}/resources/scripts/lightbox/lightbox.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/scripts/jscripts.js"></script>
</body>
</html>
