<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="RCInfotech.Services" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Services | R C Infotech</title>
    
    <!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
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
    <script type="text/javascript">
        function openNewWindows() {
            window.open("https://twitter.com/RCIPune");
        }
        function openlinkedin() {
            window.open("https://www.linkedin.com/in/r-c-infotech-425428143/");
        }
        function openfacebook() {
            window.open("https://www.facebook.com/RC-Infotech-1470954339646664/");
        }
        function openNewWindows1() {
            window.open("https://www.google.co.in/maps/place/Bramha+Estate+Co_Op+Society,+Bramha+Avenue+Bypass+Road,+Krishnakevalnagar,+Shivneri+Nagar,+Kondhwa,+Pune,+Maharashtra+411048/@18.477515,73.887539,17z/data=!3m1!4b1!4m5!3m4!1s0x3bc2ea7d70bc66d1:0x9a01bae5176fd705!8m2!3d18.4774948!4d73.8897308");
        }
    </script>
</head><!--/head-->

<body>

    <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                        <div class="top-number">
                          <p><i class="fa fa-phone-square"></i>  +91-20-41227918</p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xs-8">
                       <div class="social">
                            <ul class="social-share">
                                <li><a href="#" onclick="openfacebook()"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#" onclick="openNewWindows()"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#" onclick="openlinkedin()"><i class="fa fa-linkedin"></i></a></li> 
                            </ul>
                           
                       </div>
                    </div>
                </div>
            </div><!--/.container-->
        </div><!--/.top-bar-->

        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.aspx"><img src="images/logo.png" alt="logo" style="width:200px"></a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="index.aspx">Home</a></li>
                       <li class="dropdown">
                         <a href="AboutUs.aspx"<%-- class="dropdown-toggle" data-toggle="dropdown"--%>>About Us <i class="fa fa-angle-down"></i></a>
                              <ul class="dropdown-menu">
                                <li><a href="Events.aspx">Events</a></li>
                                  </ul>
                         <li class="dropdown">
                         <a href="Services.aspx">Services <i class="fa fa-angle-down"></i></a>
                              <ul class="dropdown-menu">
                                <li><a href="Development.aspx">Development</a></li>
                                <li><a href="Project_Mgmt.aspx">Project Management </a></li>
                                <li><a href="Application_support.aspx">Application Support</a></li>
                                <li><a href="Maintenance_support.aspx">Maintenance & Service</a></li>
								<li><a href="Database_Admn.aspx">Database Administration</a></li>
                                <li><a href="Consultancy.aspx">Consultancy Services</a></li>
                            </ul>
                        <li><a href="SuccessStories.aspx">Success Strory</a></li>
                         <li><a href="Products.aspx">Products</a></li>
                        <li ><a href="Careers.aspx">Careers</a></li> 
                        <li><a href="ContactUs.aspx">Contact</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->

<section id="services" class="service-item">
	   <div class="container">
            <div class="center wow fadeInDown">
                <h2>Our Services</h2>
                <p class="lead">R C Infotech, products encompass the systems, solutions and services required to connect businesses and customers. Leveraging a broad spectrum of technologies and organisational experience, it offers best in class products to serve a wide array of customer groups, geographies and operations.</p>
            </div>

            <div class="row">

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="images/services/services1.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Development </h3>
                            <p>Application Development and Management service teams design, build, and deploy</p>
                            <a href="Development.aspx">Read More..</a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="images/services/services2.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Project Management</h3>
                            <p>It is the a processes, methods, knowledge, skills and experience to achieve the project objectives.</p>
                              <a href="Project_Mgmt.aspx">Read More..</a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="images/services/services3.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Application Production Support</h3>
                            <p>APS provides integrated solutions with application support for service-level management</p>
                             <a href="Application_support.aspx">Read More..</a>
                        </div>
                    </div>
                </div>  

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="images/services/services4.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Maintenance & Service</h3>
                            <p>Meeting expectations on quality and timely delivery is key to sustaining a successful relationship with customers</p>
                             <a href="Maintenance_support.aspx">Read More..</a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="images/services/services5.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Database Administration</h3>
                            <p>Is the function of managing and maintaining database management systems (DBMS or RDBMS) software</p>
                            <a href="Database_Admn.aspx">Read More..</a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="images/services/services6.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Consultancy Services</h3>
                            <p>Consulting and business solutions deliver real results to global businesses to help them experience certainty</p>
                            <a href="Consultancy.aspx">Read More..</a>
                        </div>
                    </div>
                </div>                                                
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#services-->
    <br /><br />




       <section id="bottom">
        <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Company</h3>
                        <ul>
                            <li><a href="AboutUs.aspx">About us</a></li>
                            <li><a href="Careers.aspx">Careers</a></li>
                            <li><a href="ContactUs.aspx">Contact us</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Services
                        </h3>
                        <ul>
                             <li><a href="Development.aspx">Development</a></li>
                            <li><a href="Project_Mgmt.aspx">Project Management</a></li>
                            <li><a href="Application_support.aspx">Application Support</a></li>
                            <li><a href="Maintenance_support.aspx">Mainenance & Services</a></li>
                            <li><a href="Database_Admn.aspx">Database Administration</a></li>
                            <li><a href="Consultancy.aspx">Consultancy Services</a></li>
                            </ul>
                    </div>    
                </div><!--/.col-md-3-->


                 <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Contact Info
                        </h3>
               <%-- <div class="span4">
                        	<h2 class="title"><span>Contact Info</span></h2>
                            <div id="map">--%>
                            <%--<iframe width="100%" height="310" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://goo.gl/maps/2Vr2xN4Bf7P2"></iframe>--%>
                                 <a class="navbar-brand" onclick="openNewWindows1()" ><img src="images/map1.png" alt="logo" style="cursor:pointer; height: 192px; width: 238px;"  /></a>
                            </div>
                              </div>

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Address
                        </h3>
                         <p class="auto-style1"><span class="auto-style2"></span>R C Infotech,C-2,Office No.10,<br/>2nd Floor,Brahma Estate,<br/>NIBM Road,Next to Jyoti Restaurant,<br/> Kondwa Khurd,Pune-411040</p>
                            <p class="auto-style3"><b>Phone:</b> (020)41227918/65334460-61<br/><b>Email:</b><a href="mailto:#">info@rcipune.in</a>, <br/><b>Web:</b> <a href="http://www.rcipune.in" target="_blank">www.rcipune.in</a></p>                           
                        </div>

            </div>
        </div>
    </section><!--/#bottom-->

    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2013 <a target="_blank" href="http://rcipune.in/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">R C Infotech</a>. All Rights Reserved.
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="index.aspx">Home</a></li>
                        <li><a href="AboutUs.aspx">About Us</a></li>
                        <li><a href="ContactUs.aspx">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer><!--/#footer-->

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>
</body>
</html>
