<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
                    <li>
                        <i class="fas fa-phone rgtspace-5"></i> +1 (929) 478 3654
                    </li>
                    <li>
                        <i class="far fa-envelope rgtspace-5"></i> info@salango.com
                    </li>
                </ul>
                <!-- ################################################################################################ -->
            </div>
            <div class="fl_right">
                <!-- ################################################################################################ -->
                <!--
                <ul class="nospace">
                    <li><a href="#" title="Login"><i class="fas fa-sign-in-alt"> Login</i></a></li>
                    <li><a href="#" title="Sign Up"><i class="fas fa-edit"> Sign Up</i></a></li>
                    <li id="searchform">
                        <div>
                            <form action="#" method="post">
                                <fieldset>
                                    <legend>Quick Search:</legend>
                                    <input type="text" placeholder="Enter search term&hellip;">
                                    <button type="submit"><i class="fas fa-search"></i></button>
                                </fieldset>
                            </form>
                        </div>
                    </li>
                </ul>
-->
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
                        <li class="active">
                            <a href="${pageContext.request.contextPath}/init/main">Home</a>
                        </li>
                        <li>
                            <a class="drop" href="#"><i class="fas fa-utensils"></i> Menu </a>
                            <ul>
                                <li>
                                    <a href="pages/gallery.html">Appetizers</a>
                                </li>
                                <li>
                                    <a href="pages/sidebar-left.html">Soups</a>
                                </li>
                                <li>
                                    <a href="pages/full-width.html">Salads</a>
                                </li>
                                <li>
                                    <a href="pages/full-width.html">Entrée</a>
                                </li>
                                <li>
                                    <a href="pages/sidebar-right.html">Desserts</a>
                                </li>
                                <li>
                                    <a href="pages/basic-grid.html">Drinks</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"> <i class="fas fa-calendar-check"></i> Reservations
                            </a>
                        </li>
                        <li>
                            <a href="#"> <i class="far fa-map"></i> Hours & Location
                            </a>
                        </li>
                        <li>
                            <a href="#"> <i class="fas fa-address-card"></i> About Us
                            </a>
                        </li>
                        <li>
                            <a href="#"> <i class="fas fa-phone"></i> Contact
                            </a>
                        </li>

                        <li>
                            <a href="#"> <i class="fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#"> <i class="fab fa-twitter"></i></a>
                        </li>
                        <li>
                            <a href="#"> <i class="fab fa-instagram"></i></a>
                        </li>
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
                                    <form:form action="savesignup" modelAttribute="clients" class="contactForm" method="POST" onsubmit="return validateSignUp();">
                                        <div class="formtitle">
                                            <p class="heading formunderline font-x2">Sign Up</p>
                                        </div>
                                        <div class="row justify-content-center">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="fname">Name</label>
                                                    <form:input path="firstName" type="text" class="form-input" name="fname" id="fname" placeholder="Name" />
                                                    <label class="labelmsg" id="msgName"></label>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="flastname">Last Name</label>
                                                    <form:input path="lastName" type="text" class="form-input" name="flastname" id="flastname" placeholder="Last Name" />
                                                    <label class="labelmsg" id="msgLastName"></label>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="fphone">Phone</label>
                                                    <form:input path="phone" type="text" class="form-input" name="fphone" id="fphone" placeholder="Phone" />
                                                    <label class="labelmsg" id="msgPhone"></label>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="femail">Email Address</label>
                                                    <form:input path="email" type="text" class="form-input" name="femail" id="femail" placeholder="Email" />
                                                    <label class="labelmsg" id="msgEmail"></label>
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="fPWD">Password</label>
                                                    <div class="PWDToggle">
                                                        <form:input path="password" type="password" class="form-input" name="fPWD" id="fPWD" placeholder="Password" />
                                                        <i class="far fa-eye" id="togglePWD" onclick="togglePassword('fPWD', 'togglePWD');"></i>
                                                    </div>
                                                    <label class="labelmsg" id="msgPWD"></label>
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="fCPWD">Confirm Password</label>
                                                    <div class="PWDToggle">
                                                        <input type="password" class="form-input" name="fCPWD" id="fCPWD" placeholder="Confirm Password" />
                                                        <i class="far fa-eye" id="toggleCPWD" name="toggleCPWD" onclick="togglePassword('fCPWD', 'toggleCPWD');"></i>
                                                    </div>
                                                    <label class="labelmsg" id="msgCPWD"></label>
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="fDOB">Date of Birth</label>
                                                    <form:input path="dob" type="date" class="form-input" name="fDOB" id="fDOB" placeholder="Date of Birth" />
                                                    <label class="labelmsg" id="msgDOB"></label>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="fgender">Gender</label>
                                                    <form:select path="gender" id="fgender" name="fgender" class="form-input">
                                                        <option value="0" selected="selected">Select One</option>
                                                        <option value="M">Male</option>
                                                        <option value="F">Female</option>
                                                    </form:select>
                                                    <label class="labelmsg" id="msgGender"></label>
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="faddress1">Address Line 1</label>
                                                    <form:input path="addressLine1" type="text" class="form-input" name="faddress1" id="faddress1" placeholder="Address Line 1" />
                                                    <label class="labelmsg" id="msgAddress1"></label>
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="faddress2">Adress Line 2</label>
                                                    <form:input path="addressLine2" type="text" class="form-input" name="faddress2" id="faddress2" placeholder="Address Line 2" />
                                                    <label class="labelmsg" id="msgAddress2"></label>
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="fcity">City</label>
                                                    <form:input path="city" type="text" class="form-input" name="fcity" id="fcity" placeholder="City" />
                                                    <label class="labelmsg" id="msgCity"></label>
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="fcountry">Country</label>
                                                    <form:select path="country" id="fcountry" name="fcountry" class="form-input">
                                                        <option value="0" selected="selected">Select One</option>
                                                        <option value="USA">United States</option>
                                                        <option value="AFG">Afghanistan</option>
                                                        <option value="ALA">Åland Islands</option>
                                                        <option value="ALB">Albania</option>
                                                        <option value="DZA">Algeria</option>
                                                        <option value="ASM">American Samoa</option>
                                                        <option value="AND">Andorra</option>
                                                        <option value="AGO">Angola</option>
                                                        <option value="AIA">Anguilla</option>
                                                        <option value="ATA">Antarctica</option>
                                                        <option value="ATG">Antigua and Barbuda</option>
                                                        <option value="ARG">Argentina</option>
                                                        <option value="ARM">Armenia</option>
                                                        <option value="ABW">Aruba</option>
                                                        <option value="AUS">Australia</option>
                                                        <option value="AUT">Austria</option>
                                                        <option value="AZE">Azerbaijan</option>
                                                        <option value="BHS">Bahamas</option>
                                                        <option value="BHR">Bahrain</option>
                                                        <option value="BGD">Bangladesh</option>
                                                        <option value="BRB">Barbados</option>
                                                        <option value="BLR">Belarus</option>
                                                        <option value="BEL">Belgium</option>
                                                        <option value="BLZ">Belize</option>
                                                        <option value="BEN">Benin</option>
                                                        <option value="BMU">Bermuda</option>
                                                        <option value="BTN">Bhutan</option>
                                                        <option value="BOL">Bolivia, Plurinational State of</option>
                                                        <option value="BES">Bonaire, Sint Eustatius and Saba</option>
                                                        <option value="BIH">Bosnia and Herzegovina</option>
                                                        <option value="BWA">Botswana</option>
                                                        <option value="BVT">Bouvet Island</option>
                                                        <option value="BRA">Brazil</option>
                                                        <option value="IOT">British Indian Ocean Territory</option>
                                                        <option value="BRN">Brunei Darussalam</option>
                                                        <option value="BGR">Bulgaria</option>
                                                        <option value="BFA">Burkina Faso</option>
                                                        <option value="BDI">Burundi</option>
                                                        <option value="KHM">Cambodia</option>
                                                        <option value="CMR">Cameroon</option>
                                                        <option value="CAN">Canada</option>
                                                        <option value="CPV">Cape Verde</option>
                                                        <option value="CYM">Cayman Islands</option>
                                                        <option value="CAF">Central African Republic</option>
                                                        <option value="TCD">Chad</option>
                                                        <option value="CHL">Chile</option>
                                                        <option value="CHN">China</option>
                                                        <option value="CXR">Christmas Island</option>
                                                        <option value="CCK">Cocos (Keeling) Islands</option>
                                                        <option value="COL">Colombia</option>
                                                        <option value="COM">Comoros</option>
                                                        <option value="COG">Congo</option>
                                                        <option value="COD">Congo, the Democratic Republic of the</option>
                                                        <option value="COK">Cook Islands</option>
                                                        <option value="CRI">Costa Rica</option>
                                                        <option value="CIV">Côte d'Ivoire</option>
                                                        <option value="HRV">Croatia</option>
                                                        <option value="CUB">Cuba</option>
                                                        <option value="CUW">Curaçao</option>
                                                        <option value="CYP">Cyprus</option>
                                                        <option value="CZE">Czech Republic</option>
                                                        <option value="DNK">Denmark</option>
                                                        <option value="DJI">Djibouti</option>
                                                        <option value="DMA">Dominica</option>
                                                        <option value="DOM">Dominican Republic</option>
                                                        <option value="ECU">Ecuador</option>
                                                        <option value="EGY">Egypt</option>
                                                        <option value="SLV">El Salvador</option>
                                                        <option value="GNQ">Equatorial Guinea</option>
                                                        <option value="ERI">Eritrea</option>
                                                        <option value="EST">Estonia</option>
                                                        <option value="ETH">Ethiopia</option>
                                                        <option value="FLK">Falkland Islands (Malvinas)</option>
                                                        <option value="FRO">Faroe Islands</option>
                                                        <option value="FJI">Fiji</option>
                                                        <option value="FIN">Finland</option>
                                                        <option value="FRA">France</option>
                                                        <option value="GUF">French Guiana</option>
                                                        <option value="PYF">French Polynesia</option>
                                                        <option value="ATF">French Southern Territories</option>
                                                        <option value="GAB">Gabon</option>
                                                        <option value="GMB">Gambia</option>
                                                        <option value="GEO">Georgia</option>
                                                        <option value="DEU">Germany</option>
                                                        <option value="GHA">Ghana</option>
                                                        <option value="GIB">Gibraltar</option>
                                                        <option value="GRC">Greece</option>
                                                        <option value="GRL">Greenland</option>
                                                        <option value="GRD">Grenada</option>
                                                        <option value="GLP">Guadeloupe</option>
                                                        <option value="GUM">Guam</option>
                                                        <option value="GTM">Guatemala</option>
                                                        <option value="GGY">Guernsey</option>
                                                        <option value="GIN">Guinea</option>
                                                        <option value="GNB">Guinea-Bissau</option>
                                                        <option value="GUY">Guyana</option>
                                                        <option value="HTI">Haiti</option>
                                                        <option value="HMD">Heard Island and McDonald Islands</option>
                                                        <option value="VAT">Holy See (Vatican City State)</option>
                                                        <option value="HND">Honduras</option>
                                                        <option value="HKG">Hong Kong</option>
                                                        <option value="HUN">Hungary</option>
                                                        <option value="ISL">Iceland</option>
                                                        <option value="IND">India</option>
                                                        <option value="IDN">Indonesia</option>
                                                        <option value="IRN">Iran, Islamic Republic of</option>
                                                        <option value="IRQ">Iraq</option>
                                                        <option value="IRL">Ireland</option>
                                                        <option value="IMN">Isle of Man</option>
                                                        <option value="ISR">Israel</option>
                                                        <option value="ITA">Italy</option>
                                                        <option value="JAM">Jamaica</option>
                                                        <option value="JPN">Japan</option>
                                                        <option value="JEY">Jersey</option>
                                                        <option value="JOR">Jordan</option>
                                                        <option value="KAZ">Kazakhstan</option>
                                                        <option value="KEN">Kenya</option>
                                                        <option value="KIR">Kiribati</option>
                                                        <option value="PRK">Korea, Democratic People's Republic of</option>
                                                        <option value="KOR">Korea, Republic of</option>
                                                        <option value="KWT">Kuwait</option>
                                                        <option value="KGZ">Kyrgyzstan</option>
                                                        <option value="LAO">Lao People's Democratic Republic</option>
                                                        <option value="LVA">Latvia</option>
                                                        <option value="LBN">Lebanon</option>
                                                        <option value="LSO">Lesotho</option>
                                                        <option value="LBR">Liberia</option>
                                                        <option value="LBY">Libya</option>
                                                        <option value="LIE">Liechtenstein</option>
                                                        <option value="LTU">Lithuania</option>
                                                        <option value="LUX">Luxembourg</option>
                                                        <option value="MAC">Macao</option>
                                                        <option value="MKD">Macedonia, the former Yugoslav Republic of</option>
                                                        <option value="MDG">Madagascar</option>
                                                        <option value="MWI">Malawi</option>
                                                        <option value="MYS">Malaysia</option>
                                                        <option value="MDV">Maldives</option>
                                                        <option value="MLI">Mali</option>
                                                        <option value="MLT">Malta</option>
                                                        <option value="MHL">Marshall Islands</option>
                                                        <option value="MTQ">Martinique</option>
                                                        <option value="MRT">Mauritania</option>
                                                        <option value="MUS">Mauritius</option>
                                                        <option value="MYT">Mayotte</option>
                                                        <option value="MEX">Mexico</option>
                                                        <option value="FSM">Micronesia, Federated States of</option>
                                                        <option value="MDA">Moldova, Republic of</option>
                                                        <option value="MCO">Monaco</option>
                                                        <option value="MNG">Mongolia</option>
                                                        <option value="MNE">Montenegro</option>
                                                        <option value="MSR">Montserrat</option>
                                                        <option value="MAR">Morocco</option>
                                                        <option value="MOZ">Mozambique</option>
                                                        <option value="MMR">Myanmar</option>
                                                        <option value="NAM">Namibia</option>
                                                        <option value="NRU">Nauru</option>
                                                        <option value="NPL">Nepal</option>
                                                        <option value="NLD">Netherlands</option>
                                                        <option value="NCL">New Caledonia</option>
                                                        <option value="NZL">New Zealand</option>
                                                        <option value="NIC">Nicaragua</option>
                                                        <option value="NER">Niger</option>
                                                        <option value="NGA">Nigeria</option>
                                                        <option value="NIU">Niue</option>
                                                        <option value="NFK">Norfolk Island</option>
                                                        <option value="MNP">Northern Mariana Islands</option>
                                                        <option value="NOR">Norway</option>
                                                        <option value="OMN">Oman</option>
                                                        <option value="PAK">Pakistan</option>
                                                        <option value="PLW">Palau</option>
                                                        <option value="PSE">Palestinian Territory, Occupied</option>
                                                        <option value="PAN">Panama</option>
                                                        <option value="PNG">Papua New Guinea</option>
                                                        <option value="PRY">Paraguay</option>
                                                        <option value="PER">Peru</option>
                                                        <option value="PHL">Philippines</option>
                                                        <option value="PCN">Pitcairn</option>
                                                        <option value="POL">Poland</option>
                                                        <option value="PRT">Portugal</option>
                                                        <option value="PRI">Puerto Rico</option>
                                                        <option value="QAT">Qatar</option>
                                                        <option value="REU">Réunion</option>
                                                        <option value="ROU">Romania</option>
                                                        <option value="RUS">Russian Federation</option>
                                                        <option value="RWA">Rwanda</option>
                                                        <option value="BLM">Saint Barthélemy</option>
                                                        <option value="SHN">Saint Helena, Ascension and Tristan da Cunha</option>
                                                        <option value="KNA">Saint Kitts and Nevis</option>
                                                        <option value="LCA">Saint Lucia</option>
                                                        <option value="MAF">Saint Martin (French part)</option>
                                                        <option value="SPM">Saint Pierre and Miquelon</option>
                                                        <option value="VCT">Saint Vincent and the Grenadines</option>
                                                        <option value="WSM">Samoa</option>
                                                        <option value="SMR">San Marino</option>
                                                        <option value="STP">Sao Tome and Principe</option>
                                                        <option value="SAU">Saudi Arabia</option>
                                                        <option value="SEN">Senegal</option>
                                                        <option value="SRB">Serbia</option>
                                                        <option value="SYC">Seychelles</option>
                                                        <option value="SLE">Sierra Leone</option>
                                                        <option value="SGP">Singapore</option>
                                                        <option value="SXM">Sint Maarten (Dutch part)</option>
                                                        <option value="SVK">Slovakia</option>
                                                        <option value="SVN">Slovenia</option>
                                                        <option value="SLB">Solomon Islands</option>
                                                        <option value="SOM">Somalia</option>
                                                        <option value="ZAF">South Africa</option>
                                                        <option value="SGS">South Georgia and the South Sandwich Islands</option>
                                                        <option value="SSD">South Sudan</option>
                                                        <option value="ESP">Spain</option>
                                                        <option value="LKA">Sri Lanka</option>
                                                        <option value="SDN">Sudan</option>
                                                        <option value="SUR">Suriname</option>
                                                        <option value="SJM">Svalbard and Jan Mayen</option>
                                                        <option value="SWZ">Swaziland</option>
                                                        <option value="SWE">Sweden</option>
                                                        <option value="CHE">Switzerland</option>
                                                        <option value="SYR">Syrian Arab Republic</option>
                                                        <option value="TWN">Taiwan, Province of China</option>
                                                        <option value="TJK">Tajikistan</option>
                                                        <option value="TZA">Tanzania, United Republic of</option>
                                                        <option value="THA">Thailand</option>
                                                        <option value="TLS">Timor-Leste</option>
                                                        <option value="TGO">Togo</option>
                                                        <option value="TKL">Tokelau</option>
                                                        <option value="TON">Tonga</option>
                                                        <option value="TTO">Trinidad and Tobago</option>
                                                        <option value="TUN">Tunisia</option>
                                                        <option value="TUR">Turkey</option>
                                                        <option value="TKM">Turkmenistan</option>
                                                        <option value="TCA">Turks and Caicos Islands</option>
                                                        <option value="TUV">Tuvalu</option>
                                                        <option value="UGA">Uganda</option>
                                                        <option value="UKR">Ukraine</option>
                                                        <option value="ARE">United Arab Emirates</option>
                                                        <option value="GBR">United Kingdom</option>
                                                        <option value="UMI">United States Minor Outlying Islands</option>
                                                        <option value="URY">Uruguay</option>
                                                        <option value="UZB">Uzbekistan</option>
                                                        <option value="VUT">Vanuatu</option>
                                                        <option value="VEN">Venezuela, Bolivarian Republic of</option>
                                                        <option value="VNM">Viet Nam</option>
                                                        <option value="VGB">Virgin Islands, British</option>
                                                        <option value="VIR">Virgin Islands, U.S.</option>
                                                        <option value="WLF">Wallis and Futuna</option>
                                                        <option value="ESH">Western Sahara</option>
                                                        <option value="YEM">Yemen</option>
                                                        <option value="ZMB">Zambia</option>
                                                        <option value="ZWE">Zimbabwe</option>
                                                    </form:select>
                                                    <label class="labelmsg" id="msgCountry"></label>
                                                </div>
                                            </div>


                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="fstate">State</label>
                                                    <form:select path="state" id="fstate" name="fstate" class="form-input">
                                                        <option value="0" selected="selected">Select One</option>
                                                        <option value="AL">Alabama</option>
                                                        <option value="AK">Alaska</option>
                                                        <option value="AZ">Arizona</option>
                                                        <option value="AR">Arkansas</option>
                                                        <option value="CA">California</option>
                                                        <option value="CO">Colorado</option>
                                                        <option value="CT">Connecticut</option>
                                                        <option value="DE">Delaware</option>
                                                        <option value="DC">District Of Columbia</option>
                                                        <option value="FL">Florida</option>
                                                        <option value="GA">Georgia</option>
                                                        <option value="HI">Hawaii</option>
                                                        <option value="ID">Idaho</option>
                                                        <option value="IL">Illinois</option>
                                                        <option value="IN">Indiana</option>
                                                        <option value="IA">Iowa</option>
                                                        <option value="KS">Kansas</option>
                                                        <option value="KY">Kentucky</option>
                                                        <option value="LA">Louisiana</option>
                                                        <option value="ME">Maine</option>
                                                        <option value="MD">Maryland</option>
                                                        <option value="MA">Massachusetts</option>
                                                        <option value="MI">Michigan</option>
                                                        <option value="MN">Minnesota</option>
                                                        <option value="MS">Mississippi</option>
                                                        <option value="MO">Missouri</option>
                                                        <option value="MT">Montana</option>
                                                        <option value="NE">Nebraska</option>
                                                        <option value="NV">Nevada</option>
                                                        <option value="NH">New Hampshire</option>
                                                        <option value="NJ">New Jersey</option>
                                                        <option value="NM">New Mexico</option>
                                                        <option value="NY">New York</option>
                                                        <option value="NC">North Carolina</option>
                                                        <option value="ND">North Dakota</option>
                                                        <option value="OH">Ohio</option>
                                                        <option value="OK">Oklahoma</option>
                                                        <option value="OR">Oregon</option>
                                                        <option value="PA">Pennsylvania</option>
                                                        <option value="RI">Rhode Island</option>
                                                        <option value="SC">South Carolina</option>
                                                        <option value="SD">South Dakota</option>
                                                        <option value="TN">Tennessee</option>
                                                        <option value="TX">Texas</option>
                                                        <option value="UT">Utah</option>
                                                        <option value="VT">Vermont</option>
                                                        <option value="VA">Virginia</option>
                                                        <option value="WA">Washington</option>
                                                        <option value="WV">West Virginia</option>
                                                        <option value="WI">Wisconsin</option>
                                                        <option value="WY">Wyoming</option>
                                                        <option value="NA">N/A</option>
                                                    </form:select>
                                                    <label class="labelmsg" id="msgState"></label>
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="fzip">Zip Code</label>
                                                    <form:input path="zipCode" type="text" class="form-input" name="fzip" id="fzip" placeholder="Zip Code" />
                                                    <label class="labelmsg" id="msgZip"></label>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <input type="submit" value="Save" class="btn" onClick="return validateSignUp()">
                                                    <div class="submitting"></div>
                                                </div>
                                                <div class="form-group">
                                                    Already a client? Log in <a href="${pageContext.request.contextPath}/clientsCRUD/login"> here</a>
                                                </div>
                                                <br>
                                                <h2>${message}</h2>
                                            </div>
                                            <div class="col-md-4"></div>
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
                        <a href="#"><i class="fas fa-phone"></i></a> <span><strong>Give us a call:</strong> +1 (929) 478 3654</span>
                    </div>
                </li>
                <li class="one_quarter">
                    <div class="block clear">
                        <a href="#"><i class="fas fa-envelope"></i></a> <span><strong>Send us a mail:</strong> info@salango.com</span>
                    </div>
                </li>
                <li class="one_quarter">
                    <div class="block clear">
                        <a href="#"><i class="fas fa-clock"></i></a> <span><strong> Monday - Saturday:</strong> 08.00am - 18.00pm</span>
                    </div>
                </li>
                <li class="one_quarter">
                    <div class="block clear">
                        <a href="#"><i class="fas fa-map-marker-alt"></i></a> <span><strong>Come visit us:</strong> Directions to <a href="#">our location</a></span>
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
    <a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
    <!-- JAVASCRIPTS -->
    <script src="${pageContext.request.contextPath}/resources/scripts/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/scripts/jquery.backtotop.js"></script>
    <!--    <script src="layout/scripts/jquery.mobilemenu.js"></script>-->
    <script src="${pageContext.request.contextPath}/resources/scripts/lightbox/lightbox.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/scripts/jscripts.js"></script>
</body>

</html>
