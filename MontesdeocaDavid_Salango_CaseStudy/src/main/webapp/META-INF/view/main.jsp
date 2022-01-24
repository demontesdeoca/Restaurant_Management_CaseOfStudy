<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
                    <!--                     <li id="searchform"> -->
                    <!--                         <div> -->
                    <!--                             <form action="#" method="post"> -->
                    <!--                                 <fieldset> -->
                    <!--                                     <legend>Quick Search:</legend> -->
                    <!--                                     <input type="text" placeholder="Enter search term&hellip;"> -->
                    <!--                                     <button type="submit"> -->
                    <!--                                         <i class="fas fa-search"></i> -->
                    <!--                                     </button> -->
                    <!--                                 </fieldset> -->
                    <!--                             </form> -->
                    <!--                         </div> -->
                    <!--                     </li> -->
                </ul>
                <!-- ################################################################################################ -->
            </div>
        </div>
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- Top Background Image Wrapper -->
    <div class="bgded background_main">
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
                            <li><a class="drop" href="${pageContext.request.contextPath}/init/main"> <i class="fas fa-cogs"></i> Settings
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
                        <!--<li><a class="drop" href="#">Dropdown</a>
                            <ul>
                                <li><a href="#">Level 2</a></li>
                                <li><a class="drop" href="#">Level 2 + Drop</a>
                                    <ul>
                                        <li><a href="#">Level 3</a></li>
                                        <li><a href="#">Level 3</a></li>
                                        <li><a href="#">Level 3</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Level 2</a></li>
                            </ul>
                        </li>
-->
                    </ul>
                    <!-- ################################################################################################ -->
                </nav>
            </header>
        </div>
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <div class="overlay">
            <div id="pageintro" class="hoc clear">
                <div>
                    <div>
                        <p class="txt1 animated fadeInDown">Welcome to</p>
                    </div>
                    <div class="center">
                        <span class="tit1 animated fadeInUp"> SALANGO <br> <span class="undertit1">Kitchen</span>
                        </span>
                    </div>
                    <div>
                        <footer class="center">
                            <a class="btn animated fadeInUp" href="${pageContext.request.contextPath}/itemsCRUD/menu">Take a look at our Menu</a>
                        </footer>
                    </div>
                </div>
            </div>
        </div>
        <!-- ################################################################################################ -->
    </div>
    <!-- End Top Background Image Wrapper -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div class="wrapper row3">
        <main class="hoc container clear">
            <!-- main body -->
            <!-- ################################################################################################ -->
            <section id="introblocks">
                <ul class="nospace group btmspace-80">
                    <li class="one_third first">
                        <figure>
                            <a class="imgover" href="#"> <img class="imgsize1" src="${pageContext.request.contextPath}/resources/images/gallery/dish1_small.jpg" alt="">
                            </a>
                            <figcaption>
                                <h6 class="heading">Our Story</h6>
                                <div>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                </div>
                            </figcaption>
                        </figure>
                    </li>
                    <li class="one_third">
                        <figure>
                            <a class="imgover" href="#"> <img class="imgsize1" src="${pageContext.request.contextPath}/resources/images/gallery/chef11_small.jpg" alt="">
                            </a>
                            <figcaption>
                                <h6 class="heading">Our Staff</h6>
                                <div>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                </div>
                            </figcaption>
                        </figure>
                    </li>
                    <li class="one_third">
                        <figure>
                            <a class="imgover" href="#"> <img class="imgsize1" src="${pageContext.request.contextPath}/resources/images/gallery/table1_small.jpg" alt="">
                            </a>
                            <figcaption>
                                <h6 class="heading">Our Style</h6>
                                <div>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                </div>
                            </figcaption>
                        </figure>
                    </li>
                </ul>
            </section>
            <!-- ################################################################################################ -->
            <hr class="btmspace-80">
            <!-- ################################################################################################ -->
            <section class="group">
                <div class="one_half first">
                    <img class="inspace-15 borderedbox imgsize2" src="${pageContext.request.contextPath}/resources/images/gallery/lamp_small.jpg" alt="">
                </div>
                <div class="one_half">
                    <ul class="nospace group inspace-15">
                        <li class="one_half first btmspace-50">
                            <article>
                                <h6 class="heading">
                                    <a href="#">Our Story</a>
                                </h6>
                                <p class="nospace">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book&hellip;</p>
                            </article>
                        </li>
                        <li class="one_half btmspace-50">
                            <article>
                                <h6 class="heading">
                                    <a href="#">The Beginning</a>
                                </h6>
                                <p class="nospace">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book&hellip;</p>
                            </article>
                        </li>
                        <li class="one_half first">
                            <article>
                                <h6 class="heading">
                                    <a href="#">Later</a>
                                </h6>
                                <p class="nospace">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book&hellip;</p>
                            </article>
                        </li>
                        <li class="one_half">
                            <article>
                                <h6 class="heading">
                                    <a href="#">Eventually</a>
                                </h6>
                                <p class="nospace">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book&hellip;</p>
                            </article>
                        </li>
                    </ul>
                </div>
            </section>
            <!-- ################################################################################################ -->
            <!-- / main body -->
            <div class="clear"></div>
        </main>
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div class="bgded overlay background_section2">
        <figure class="hoc container clear imgroup">
            <!-- ################################################################################################ -->
            <figcaption class="sectiontitle">
                <p class="nospace font-xs txtred">From a dedicated kitchen</p>
                <p class="heading underline txtdark txt1">Our Menu</p>
            </figcaption>
            <ul class="nospace group">
                <li class="one_third"><a class="imgmenuover" data-tag="APPETIZERS" href="${pageContext.request.contextPath}/itemsCRUD/menuopt?menopt=appetizer"> <img class="imgsize3" src="${pageContext.request.contextPath}/resources/images/gallery/appet1_small.jpg" alt="">
                </a></li>
                <li class="one_third"><a class="imgmenuover" data-tag="SOUPS" href="${pageContext.request.contextPath}/itemsCRUD/menuopt?menopt=soup"> <img class="imgsize3" src="${pageContext.request.contextPath}/resources/images/gallery/soup1_small.jpg" alt="">
                </a></li>
                <li class="one_third"><a class="imgmenuover" data-tag="SALADS" href="${pageContext.request.contextPath}/itemsCRUD/menuopt?menopt=salad"> <img class="imgsize3" src="${pageContext.request.contextPath}/resources/images/gallery/salads.jpg" alt="">
                </a></li>
                <li class="one_third"><a class="imgmenuover" data-tag="ENTRÉES" href="${pageContext.request.contextPath}/itemsCRUD/menuopt?menopt=entree"> <img class="imgsize3" src="${pageContext.request.contextPath}/resources/images/gallery/meal15_small.jpg" alt="">
                </a></li>
                <li class="one_third"><a class="imgmenuover" data-tag="DESSERTS" href="${pageContext.request.contextPath}/itemsCRUD/menuopt?menopt=dessert"> <img class="imgsize3" src="${pageContext.request.contextPath}/resources/images/gallery/dessert14_small.jpg" alt="">
                </a></li>
                <li class="one_third"><a class="imgmenuover" data-tag="DRINKS" href="${pageContext.request.contextPath}/itemsCRUD/menuopt?menopt=drink"> <img class="imgsize3" src="${pageContext.request.contextPath}/resources/images/gallery/drinks1_small.jpg" alt="">
                </a></li>
            </ul>
            <!-- ################################################################################################ -->
        </figure>
        <!-- ################################################################################################ -->
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div class="wrapper row2">
        <div class="hoc container clear">
            <!-- ################################################################################################ -->
            <div class="sectiontitle">
                <p class="nospace font-xs">Masters of the kitchen</p>
                <p class="heading underline font-x2">Our Staff</p>
            </div>
            <ul class="nospace group team">
                <li class="one_quarter first">
                    <figure>
                        <a class="imgover" href="${pageContext.request.contextPath}/resources/images/gallery/chef2_small.jpg" data-lightbox="imgstaff"> <img class="imgsize4" src="${pageContext.request.contextPath}/resources/images/gallery/chef2_small.jpg" alt="">
                        </a>
                        <figcaption>
                            <strong>J. Smith</strong> <em>Cheff</em>
                        </figcaption>
                    </figure>
                </li>
                <li class="one_quarter">
                    <figure>
                        <a class="imgover" href="${pageContext.request.contextPath}/resources/images/gallery/chef4_small.jpg" data-lightbox="imgstaff"> <img class="imgsize4" src="${pageContext.request.contextPath}/resources/images/gallery/chef4_small.jpg" alt="">
                        </a>
                        <figcaption>
                            <strong>T. Knight</strong> <em>Cheff</em>
                        </figcaption>
                    </figure>
                </li>
                <li class="one_quarter">
                    <figure>
                        <a class="imgover" href="${pageContext.request.contextPath}/resources/images/gallery/chef5_small.jpg" data-lightbox="imgstaff"> <img class="imgsize4" src="${pageContext.request.contextPath}/resources/images/gallery/chef5_small.jpg" alt="">
                        </a>
                        <figcaption>
                            <strong>C. Mount</strong> <em>Cheff</em>
                        </figcaption>
                    </figure>
                </li>
                <li class="one_quarter">
                    <figure>
                        <a class="imgover" href="${pageContext.request.contextPath}/resources/images/gallery/chef6_small.jpg" data-lightbox="imgstaff"> <img class="imgsize4" src="${pageContext.request.contextPath}/resources/images/gallery/chef6_small.jpg" alt="">
                        </a>
                        <figcaption>
                            <strong>D. Loop</strong> <em>Cheff</em>
                        </figcaption>
                    </figure>
                </li>
            </ul>
            <!-- ################################################################################################ -->
        </div>
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div class="wrapper row3 background_section2">
        <figure class="hoc container clear clients">
            <!-- ################################################################################################ -->
            <figcaption class="sectiontitle">
                <p class="nospace font-xs txtred">A cozy spot to visit</p>
                <p class="heading underline txtdark txt1">Our Place</p>
            </figcaption>
            <ul class="nospace group">
                <li class="one_quarter"><a class="imgover" href="${pageContext.request.contextPath}/resources/images/gallery/place1_small.jpg" data-lightbox="imglocation"> <img class="imgsize5" src="${pageContext.request.contextPath}/resources/images/gallery/place1_small.jpg" alt="">
                </a></li>
                <li class="one_quarter"><a class="imgover" href="${pageContext.request.contextPath}/resources/images/gallery/place23_small.jpg" data-lightbox="imglocation"> <img class="imgsize5" src="${pageContext.request.contextPath}/resources/images/gallery/place23_small.jpg" alt="">
                </a></li>
                <li class="one_quarter"><a class="imgover" href="${pageContext.request.contextPath}/resources/images/gallery/place2_small.jpg" data-lightbox="imglocation"> <img class="imgsize5" src="${pageContext.request.contextPath}/resources/images/gallery/place2_small.jpg" alt="">
                </a></li>
                <li class="one_quarter"><a class="imgover" href="${pageContext.request.contextPath}/resources/images/gallery/place4_small.jpg" data-lightbox="imglocation"> <img class="imgsize5" src="${pageContext.request.contextPath}/resources/images/gallery/place4_small.jpg" alt="">
                </a></li>
                <li class="one_quarter first"><a class="imgover" href="${pageContext.request.contextPath}/resources/images/gallery/place5_small.jpg" data-lightbox="imglocation"> <img class="imgsize5" src="${pageContext.request.contextPath}/resources/images/gallery/place5_small.jpg" alt="">
                </a></li>
                <li class="one_quarter"><a class="imgover" href="${pageContext.request.contextPath}/resources/images/gallery/place7_small.jpg" data-lightbox="imglocation"> <img class="imgsize5" src="${pageContext.request.contextPath}/resources/images/gallery/place7_small.jpg" alt="">
                </a></li>
                <li class="one_quarter"><a class="imgover" href="${pageContext.request.contextPath}/resources/images/gallery/place9_small.jpg" data-lightbox="imglocation"> <img class="imgsize5" src="${pageContext.request.contextPath}/resources/images/gallery/place9_small.jpg" alt="">
                </a></li>
                <li class="one_quarter"><a class="imgover" href="${pageContext.request.contextPath}/resources/images/gallery/place6_small.jpg" data-lightbox="imglocation"> <img class="imgsize5" src="${pageContext.request.contextPath}/resources/images/gallery/place6_small.jpg" alt="">
                </a></li>
            </ul>
            <!-- ################################################################################################ -->
        </figure>
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div class="wrapper bgded overlay row3">
        <section id="testimonials" class="hoc container clear">
            <!-- ################################################################################################ -->
            <div class="sectiontitle">
                <p class="nospace font-xs">let us hear from you</p>
                <p class="heading underline font-x2">Leave a review</p>
            </div>
            <article class="btmspace-80">
                <blockquote>Pellentesque ipsum pede malesuada non vulputate at euismod et lorem nullam tincidunt urna eget nisl eleifend vulputate sed vitae risus sed enim fermentum venenatis sed augue eros tempor sit amet.</blockquote>
                <figure class="clear">
                    <img class="imgsize6" src="${pageContext.request.contextPath}/resources/images/gallery/face2_small.jpg" alt="">
                    <figcaption>
                        <h6 class="heading">Thomas Gale</h6>
                        <em>customer</em>
                    </figcaption>
                </figure>
            </article>
            <footer class="center">
                <a class="btn" href="#">More Testimonials</a>
            </footer>
            <!-- ################################################################################################ -->
        </section>
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!--<div class="wrapper background_section2">
        <section class="hoc container clear">
            <div class="sectiontitle">
                <p class="nospace font-xs">Felis dictum viverra mauris dui</p>
                <p class="heading underline font-x2">Phasellus nunc erat cursus</p>
            </div>
            <ul id="latest" class="nospace group">
                <li class="one_third first">
                    <article><a class="imgover" href="#"><img src="images/demo/348x261.png" alt=""></a>
                        <ul class="nospace meta clear">
                            <li><i class="fas fa-user"></i> <a href="#">Admin</a></li>
                            <li><i class="fas fa-comments"></i> <a href="#">Comments (10)</a></li>
                        </ul>
                        <div class="excerpt clear">
                            <h6 class="heading">Aliquet tincidunt vel vulputate egestas leo</h6>
                            <time datetime="2045-04-05T08:15+00:00"><strong>05</strong> <em>Apr</em></time>
                            <p>Integer id justo ut diam suscipit laoreet quisque bibendum dolor at ultricies vestibulum risus&hellip;</p>
                        </div>
                        <footer><a class="btn" href="#">Read More</a></footer>
                    </article>
                </li>
                <li class="one_third">
                    <article><a class="imgover" href="#"><img src="images/demo/348x261.png" alt=""></a>
                        <ul class="nospace meta clear">
                            <li><i class="fas fa-user"></i> <a href="#">Admin</a></li>
                            <li><i class="fas fa-comments"></i> <a href="#">Comments (10)</a></li>
                        </ul>
                        <div class="excerpt clear">
                            <h6 class="heading">Dui eleifend elit ac ullamcorper libero tellus</h6>
                            <time datetime="2045-04-04T08:15+00:00"><strong>04</strong> <em>Apr</em></time>
                            <p>Vel turpis quisque blandit metus ut tellus in mauris vivamus faucibus vivamus egestas lobortis&hellip;</p>
                        </div>
                        <footer><a class="btn" href="#">Read More</a></footer>
                    </article>
                </li>
                <li class="one_third">
                    <article><a class="imgover" href="#"><img src="images/demo/348x261.png" alt=""></a>
                        <ul class="nospace meta clear">
                            <li><i class="fas fa-user"></i> <a href="#">Admin</a></li>
                            <li><i class="fas fa-comments"></i> <a href="#">Comments (10)</a></li>
                        </ul>
                        <div class="excerpt clear">
                            <h6 class="heading">Odio curabitur id neque sed urna facilisis blandit</h6>
                            <time datetime="2045-04-03T08:15+00:00"><strong>03</strong> <em>Apr</em></time>
                            <p>Donec quis metus vel tortor porttitor pretium cras at justo nullam at lacus id metus pulvinar&hellip;</p>
                        </div>
                        <footer><a class="btn" href="#">Read More</a></footer>
                    </article>
                </li>
            </ul>
        </section>
    </div>-->
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
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div class="bgded overlay row4 background_main">
        <footer id="footer" class="hoc clear">
            <!-- ################################################################################################ -->
            <ul id="latest" class="nospace group">
                <li class="one_third first fixedheight">
                    <h6 class="heading">Feel free to ask anything</h6>
                    <form action="#" method="post" class="contact-form webform" data-aos="fade-up" data-aos-delay="400" role="form">
                        <input type="text" class="form-control" name="cf-name" placeholder="Name">
                        <input type="email" class="form-control" name="cf-email" placeholder="Email">
                        <textarea class="form-control" rows="5" name="cf-message" placeholder="Message"></textarea>
                        <footer>
                            <button type="submit" id="submit-button" name="submit">Send Message</button>
                        </footer>
                    </form>
                </li>
                <li class="one_third fixedheight">
                    <h6 class="heading">Work with Us</h6>
                    <p class="nospace btmspace-15">We would love to have you join our team! Fill out the form below and we will be in touch.</p>
                    <form action="#" method="post">
                        <legend>Newsletter:</legend>
                        <input class="btmspace-15" type="text" value="" placeholder="Name">
                        <input class="btmspace-15" type="text" value="" placeholder="Email">
                        <footer style="margin-bottom: 0px; position: absolute;">
                            <button type="submit" value="submit">Apply Now</button>
                        </footer>
                    </form>
                </li>
                <li class="one_third fixedheight">
                    <h6 class="heading">Our social Networks</h6>
                    <ul class="nospace linklist">
                        <li>
                            <article>
                                <p class="nospace btmspace-10">
                                    <a href="#"> <i class=" socialntw fab fa-facebook-f"></i>
                                    </a>
                                </p>
                            </article>
                        </li>
                        <li>
                            <article>
                                <p class="nospace btmspace-10">
                                    <a href="#"> <i class=" socialntw fab fa-twitter"></i>
                                    </a>
                                </p>
                            </article>
                        </li>
                        <li>
                            <article>
                                <p class="nospace btmspace-10">
                                    <a href="#"> <i class=" socialntw fab fa-instagram"></i>
                                    </a>
                                </p>
                            </article>
                        </li>
                    </ul>
                </li>
            </ul>
            <!--            <div class="one_quarter first">
                <div class="ml-auto col-lg-5 col-md-6 col-12">
                    <h6 class="heading">Feel free to ask anything</h6>
                    <form action="#" method="post" class="contact-form webform" data-aos="fade-up" data-aos-delay="400" role="form">
                        <input type="text" class="form-control" name="cf-name" placeholder="Name">
                        <input type="email" class="form-control" name="cf-email" placeholder="Email">
                        <textarea class="form-control" rows="5" name="cf-message" placeholder="Message"></textarea>
                        <button type="submit" class="form-control" id="submit-button" name="submit">Send Message</button>
                    </form>
                </div>
            </div>
            <div class="one_quarter">
                <h6 class="heading">Work with Us</h6>
                <p class="nospace btmspace-15">We would love to have you join our team! Fill out the form below and we will be in touch.</p>
                <form action="#" method="post">
                    <fieldset>
                        <legend>Newsletter:</legend>
                        <input class="btmspace-15" type="text" value="" placeholder="Name">
                        <input class="btmspace-15" type="text" value="" placeholder="Email">
                        <footer><button type="submit" value="submit">Apply Now</button></footer>
                    </fieldset>
                </form>
            </div>
            <div class="one_quarter">
                <h6 class="heading">Our social Networks</h6>
                <ul class="nospace linklist">
                    <li>
                        <article>
                            <p class="nospace btmspace-10"> <a href="#"> <i class="fab fa-facebook-f"></i> </a></p>
                        </article>
                    </li>
                    <li>
                        <article>
                            <p class="nospace btmspace-10"><a href="#"> <i class="fab fa-twitter"></i> </a> </p>

                        </article>
                    </li>

                    <li>
                        <article>
                            <p class="nospace btmspace-10"><a href="#"> <i class="fab fa-instagram"></i> </a> </p>

                        </article>
                    </li>
                </ul>
            </div>-->
            <!--<div class="one_quarter">
                <h6 class="heading">Lacinia iaculis nunc</h6>
                <ul class="nospace clear latestimg">
                    <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                    <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                    <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                    <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                    <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                    <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                    <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                    <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                    <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                </ul>
            </div>-->
            <!-- ################################################################################################ -->
        </footer>
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div class="wrapper row5">
        <div id="copyright" class="hoc clear">
            <!-- ################################################################################################ -->
            <p class="fl_left">
                Copyright &copy; 2021 - All Rights Reserved - <a href="#">D'montes</a>
            </p>
            <p class="fl_right">
                <a href="${pageContext.request.contextPath}/admin/login" title="">Site Admin</a>
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
</body>
</html>
