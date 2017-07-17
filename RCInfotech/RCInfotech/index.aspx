<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="RCInfotech.index" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Welcome R C Infotech</title>
	
	<!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
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


    <style type="text/css">
        .auto-style1 {
            font-size: small;
            font-weight: bold;
        }
        .auto-style2 {
            font-size: x-small;
        }
        .auto-style3 {
            font-size: small;
        }
    </style>


</head><!--/head-->

<body class="homepage">

    <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                        <div class="top-number"><p><i class="fa fa-phone-square"></i>  +91 20 4122 7918</p></div>
                    </div>
                    <div class="col-sm-6 col-xs-8">
                       <div class="social">
                            <ul class="social-share">
                                <li><a href="#" onclick="openfacebook()"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"  onclick="openNewWindows()"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#" onclick="openlinkedin()"><i class="fa fa-linkedin"></i></a></li> 
                            </ul>
                           <%-- <div class="search">
                                <form role="form">
                                    <input type="text" class="search-form" autocomplete="off" placeholder="Search">
                                    <i class="fa fa-search"></i>
                                </form>
                           </div>--%>
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
						 <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand"  href="index.aspx"><img src="images/logo.png" alt="logo" style="width:200px"></a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.aspx">Home</a></li>
                        <%--<li><a href="AboutUs.aspx">About Us</a></li>--%>
                        <li class="dropdown">
                         <a href="AboutUs.aspx"<%-- class="dropdown-toggle" data-toggle="dropdown"--%>>About Us <i class="fa fa-angle-down"></i></a>
                              <ul class="dropdown-menu">
                                <li><a href="Events.aspx">Events</a></li>
                                  </ul>

                         <li class="dropdown">
                         <a href="Services.aspx"<%-- class="dropdown-toggle" data-toggle="dropdown"--%>>Services <i class="fa fa-angle-down"></i></a>
                              <ul class="dropdown-menu">
                                <li><a href="Development.aspx">Development</a></li>
                                <li><a href="Project_Mgmt.aspx">Project Management </a></li>
                                <li><a href="Application_support.aspx">Application  Support</a></li>
                                <li><a href="Maintenance_support.aspx">Maintenance & Service</a></li>
								<li><a href="Database_Admn.aspx">Database Administration</a></li>
                                <li><a href="Consultancy.aspx">Consultancy Services</a></li>
                            </ul>
                         <li><a href="SuccessStories.aspx">Success Story</a></li>
                         <li><a href="Products.aspx">Products</a></li>
                        <li><a href="Careers.aspx">Careers</a></li> 
                        <li><a href="Contact.aspx">Contact Us</a></li>                   
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
		
    </header><!--/header-->

<section id="main-slider" class="no-margin">
        <div class="carousel slide">
            <ol class="carousel-indicators">
                <li data-target="#main-slider" data-slide-to="0" class="active"></li>
                <li data-target="#main-slider" data-slide-to="1"></li>
                <li data-target="#main-slider" data-slide-to="2"></li>
				 <li data-target="#main-slider" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner">

                <div class="item active" style="background-image: url(images/slider/bg1.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Beyond the Imagination</h1>
                                    <h2 class="animation animated-item-2">It is the human imagination is limitless as it is, but somehow the actions or experiences felt by the person using the expression is so great</h2>
                                    <a class="btn-slide animation animated-item-3" href="#">Read More</a>                                </div>
                            </div>

                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="images/slider/img1.png" class="img-responsive">                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/.item-->

                <div class="item" style="background-image: url(images/slider/bg2.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">We Offer Different Ways of Problem Solving</h1>
                                    <h2 class="animation animated-item-2">It would be wonderful to have the ability to solve all problems efficiently and in a timely fashion without difficulty</h2>
                                    <a class="btn-slide animation animated-item-3" href="#">Read More</a>                                </div>
                            </div>

                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="images/slider/img2.png" class="img-responsive">                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/.item-->

                <div class="item" style="background-image: url(images/slider/bg3.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Technical skills are the knowledge and capabilities to perform specialized tasks</h1>
                                    <h2 class="animation animated-item-2">Technical skills are abilities and knowledge needed to perform specific tasks. They are practical, and often relate to mechanical, IT, mathematical, or scientific tasks.</h2>
                                    <a class="btn-slide animation animated-item-3" href="#">Read More</a>                                </div>
                            </div>
                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="images/slider/img3.png" class="img-responsive">                                </div>
                            </div>
                        </div>
                    </div>
                </div>
				<!--/.item-->
				 <div class="item" style="background-image: url(images/slider/bg4.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Project planning is a procedural step in project management</h1>
                                    <h2 class="animation animated-item-2">where required documentation is created to ensure successful project completion. The project plan clearly defines how the project is executed, monitored, controlled and closed. </h2>
                                    <a class="btn-slide animation animated-item-3" href="#">Read More</a>                                </div>
                            </div>
                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="images/slider/img4.png" class="img-responsive">                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/.item-->
            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->
    <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
        <i class="fa fa-chevron-left"></i>    </a>
    <a class="next hidden-xs" href="#main-slider" data-slide="next">
        <i class="fa fa-chevron-right"></i>    </a>  </section>
    <!--/#main-slider-->

    <section id="feature" >
        <div class="container">
           <div class="center wow fadeInDown">
                <h2>What we are?</h2>
                <p class="lead">With extensive  knowledge and clear technology leadership in our focused industries, our  software enables customers to transition from being merely competitive, to  becoming market leaders. This competitive edge—The RCI Edge—is born from  solutions reflecting industry best practices, and services that are  specifically focused on helping our customers meet their individual business  goals, profitably. RCI is one of the leading companies that cater to the talent  identification needs of its clients, providing them with end to end solutions  maintaining accuracy, secrecy and confidentiality, which are the core values of  the corporation. We have been amply rewarded with the unconditional trust that  our clients have put in us</p>
            </div>

            <div class="row">
                <div class="features">
                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-bullhorn"></i>
                            <h2 style="font-size:15px">Application Devolopment</h2>
                            <h3>Helping enterprises build sophisticated applications</h3>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-comments"></i>
                            <h2 style="font-size:15px">Application Rationlization</h2>
                            <h3>Radical reshuffling of an application portfolio as part.</h3>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-cloud-download"></i>
                            <h2 style="font-size:15px">Application Maintenance/Support</h2>
                            <h3>Deliver automation, reduce costs,& optimize business</h3>
                        </div>
                    </div><!--/.col-md-4-->
                
                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-leaf"></i>
                            <h2 style="font-size:15px">Database Maintenance</h2>
                            <h3>It is task to creation of backup on a regular schedule</h3>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-cogs"></i>
                            <h2 style="font-size:15px">Technology CoEs</h2>
                            <h3>Promotes interoperability and cross-platform capabilities</h3>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-heart"></i>
                            <h2 style="font-size:15px">Consultation</h2>
                            <h3>Provides professional advice to an organization</h3>
                        </div>
                    </div><!--/.col-md-4-->
                </div><!--/.services-->
            </div><!--/.row-->    
        </div><!--/.container-->
    </section><!--/#feature-->

   
   

    <section id="middle">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 wow fadeInDown">
                    <div class="skill">
                        <h2>Our Skills</h2>
                        <p>Building values for our customers is how we differentiate our business from our peers. It goes beyond executing projects, reducing cost or augmenting technical skill sets. It is all about assisting customers in achieving their business goals through superior execution, best-of-breed solutions and responsive service</p>

                        <div class="progress-wrap">
                            <h3>Development & Deployment</h3>
                            <div class="progress">
                              <div class="progress-bar  color1" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 85%">
                                <span class="bar-width">85%</span>
                              </div>

                            </div>
                        </div>

                        <div class="progress-wrap">
                            <h3>Support & Service</h3>
                            <div class="progress">
                              <div class="progress-bar color2" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 95%">
                               <span class="bar-width">95%</span>
                              </div>
                            </div>
                        </div>

                        <div class="progress-wrap">
                            <h3>Database Maintenance</h3>
                            <div class="progress">
                              <div class="progress-bar color3" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 85%">
                                <span class="bar-width">85%</span>
                              </div>
                            </div>
                        </div>
                        <div class="progress-wrap">
                            <h3>Application Design</h3>
                        <div class="progress">
                          <div class="progress-bar color4" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 85%">
                                <span class="bar-width">85%</span>
                              </div>
                            </div>
                        </div>
                    </div>

                </div><!--/.col-sm-6-->

                <div class="col-sm-6 wow fadeInDown">
                    <div class="accordion">
                        <h2>Why People like us?</h2>
                        <div class="panel-group" id="accordion1">
                          <div class="panel panel-default">
                            <div class="panel-heading active">
                              <h3 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne1">
                                 Building Customer Values
                                  <i class="fa fa-angle-right pull-right"></i>
                                </a>
                              </h3>
                            </div>

                            <div id="collapseOne1" class="panel-collapse collapse in">
                              <div class="panel-body">
                                  <div class="media accordion-inner">
                                        <div class="pull-left">
                                            <img class="img-responsive" src="images/bvalue.png">
                                        </div>
                                        <div class="media-body">
                                             <h4>VALUE for our Customer</h4>
                                           <p>How we differentiate our business from our peers,reducing cost or augmenting technical skill sets.</p>
                                        </div>
                                  </div>
                              </div>
                            </div>
                          </div>

                          <div class="panel panel-default">
                            <div class="panel-heading">
                              <h3 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo1">
                                  Customer Support & Care
                                  <i class="fa fa-angle-right pull-right"></i>
                                </a>
                              </h3>
                            </div>
                            <div id="collapseTwo1" class="panel-collapse collapse">
                              <div class="panel-body">
							          <div class="media accordion-inner">
                                        <div class="pull-left">
                                            <img class="img-responsive" src="images/support.png">
                                        </div>
                                        <div class="media-body">
                                             <h4>SERVICE to Customer</h4>
                                           <p>Providing exceptional customer service that meets and exceeds their expectations will remain our priority.</p>
                                        </div>
                                  </div>
                                
                              </div>
                            </div>
                          </div>

                          <div class="panel panel-default">
                            <div class="panel-heading">
                              <h3 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseThree1">
                                  Innovativeness Work
                                  <i class="fa fa-angle-right pull-right"></i>
                                </a>
                              </h3>
                            </div>
                            <div id="collapseThree1" class="panel-collapse collapse">
                              <div class="panel-body">
							          <div class="media accordion-inner">
                                        <div class="pull-left">
                                            <img class="img-responsive" src="images/inovation.png">
                                        </div>
                                        <div class="media-body">
                                             <h4>Our Innovatives</h4>
                                           <p>INNOVATIVENESS is being able to apply uncommon thought to arrive at a more efficient, elegant and sustainable solution to a customer problem.</p>
                                        </div>
                                  </div>
							                                  
                              </div>
                            </div>
                          </div>

                          <div class="panel panel-default">
                            <div class="panel-heading">
                              <h3 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseFour1">
                                  Technology Delivered
                                  <i class="fa fa-angle-right pull-right"></i>
                                </a>
                              </h3>
                            </div>
                            <div id="collapseFour1" class="panel-collapse collapse">
                              <div class="panel-body">
							          <div class="media accordion-inner">
                                        <div class="pull-left">
                                            <img class="img-responsive" src="images/techno.png">
                                        </div>
                                        <div class="media-body">
                                             <h4>Technology is the TOOLS</h4>
                                           <p> TECHNOLOGY is the tool that we will leverage to build a viable and cost-effective solution. We will create exceptional competencies in all business-critical technologies of current or future interest of our customers..</p>
                                        </div>
                                  </div>
							                                
                              </div>
                            </div>
                          </div>
                        </div><!--/#accordion1-->
                    </div>
                </div>

            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#middle-->

    <section id="content">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-8 wow fadeInDown">
                   <div class="tab-wrap"> 
                        <div class="media">
                            <div class="parrent pull-left">
                                <ul class="nav nav-tabs nav-stacked">
                                    <li class=""><a href="#tab1" data-toggle="tab" class="analistic-01">Mission & Vision</a></li>
                                    <li class="active"><a href="#tab2" data-toggle="tab" class="analistic-02">We work for you</a></li>
                                    <li class=""><a href="#tab3" data-toggle="tab" class="tehnical">Quality Focus</a></li>
                                    <li class=""><a href="#tab4" data-toggle="tab" class="tehnical">Client choose us</a></li>
                                    <li class=""><a href="#tab5" data-toggle="tab" class="tehnical">Service overview</a></li>
                                </ul>
                            </div>

                            <div class="parrent media-body">
                                <div class="tab-content">
                                    <div class="tab-pane fade" id="tab1">
                                        <div class="media">
                                           <div class="pull-left">
                                                <img class="img-responsive" src="images/vision-mission.png">
                                            </div>
                                            <div class="media-body">
                                                 <h2>Our Mission & Vision</h2>
                                                 <p>we will deliver operational excellence in every corner of the Company and meet or exceed our commitments to the many constituencies we serve. All of our long-term strategies and short-term actions will be molded by a set of core values that are shared by each and every associate</p>
												 <p> Our Vision is to provide top quality services in the fields of Application Development, Product Customization, Business Consulting and Web Designing everything under one-roof.</p>
                                            </div>
                                        </div>
                                    </div>

                                     <div class="tab-pane fade active in" id="tab2">
                                        <div class="media">
                                           <div class="pull-left">
                                                <img class="img-responsive" src="images/workforyou.png">
                                            </div>
                                            <div class="media-body">
                                                 <h2>We work for our customers</h2>
                                                 <p>For our customers is how we differentiate our business from our peers. It goes beyond executing projects, reducing cost or augmenting technical skill sets. It is all about assisting customers in achieving their business goals through superior execution, best-of-breed solutions and responsive service. </p>
                                            </div>
                                        </div>
                                     </div>

                                     <div class="tab-pane fade" id="tab3">
                                                                              <div class="media">
                                           <div class="pull-left">
                                                <img class="img-responsive" src="images/quality_management.png">
                                            </div>
                                            <div class="media-body">
                                                 <h2>We keep our focus on Quality Service</h2>
                                                 <p>We at RCI Software define quality with customer satisfaction. All our practices and measures are designed and implemented keeping the end consumer in mind. Our measure of quality is the degree to which we are able to deliver as per the customer’s requirements. </p>
                                            </div>
                                        </div>

                                     </div>
                                     
                                     <div class="tab-pane fade" id="tab4">
                                                                                <div class="media">
                                           <div class="pull-left">
                                                <img class="img-responsive" src="images/cchooseus.png">
                                            </div>
                                            <div class="media-body">
                                                 <h2>Why client choose us?</h2>
                                                 <p>We have a non-hierarchical structure, supported by strong leadership, so we work together at all levels. Our clients know exactly who is doing the work and are involved throughout the process - continuity and communication are vital. We make the best people available for each client’s needs. </p>
                                            </div>
                                        </div>

                                     </div>

                                     <div class="tab-pane fade" id="tab5">
                                                                               <div class="media">
                                           <div class="pull-left">
                                                <img class="img-responsive" src="images/IT-Customer-Support.png">
                                            </div>
                                            <div class="media-body">
                                                 <h2>Your Satiscation is our Values</h2>
                                                 <p>Building strong relationships with customers are the foundation of successful businesses. Our market-driven application software and services not only gives significant insight into customer interactions, but offer valuable information to help anticipate customer needs and fulfill them. RCI solutions provide deep customer knowledge and facilitate customer intimacy </p>
                                            </div>
                                        </div>

                                     </div>
                                </div> <!--/.tab-content-->  
                            </div> <!--/.media-body--> 
                        </div> <!--/.media-->     
                    </div><!--/.tab-wrap-->               
                </div><!--/.col-sm-6-->

                <div class="col-xs-12 col-sm-4 wow fadeInDown">
                    <div class="testimonial">
                        <h2>Our Team</h2>
                         <div class="media testimonial-inner">
                            <div class="pull-left">
                                <img class="img-responsive img-circle" src="images/testimonials1.png" style="width:auto">
                            </div>
                            <div class="media-body">
                                <p>Our people are our greatest asset and biggest differentiator. They are passionate about results, and also believe in having a lot of fun along the way. However, that does not take away from the focus on work. Our people are passionate about delivering results to clients.</p>
                                </div>
                         </div>

                        </div>
                </div>

            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#content-->

    <section id="partner">
        <div class="container">
            <div class="center wow fadeInDown">
                <h2>Our Commitment</h2>
                <p class="lead">Our Commitments define who we are, how we work, our priorities and our values. ... Our customers have a choice, and how we perform determines whether they choose us. We aim high, set ambitious goals and deliver results, and we use customer feedback to recalibrate when necessary.</p>
            </div>    

            <div class="partners">
                <ul>
                    <li><img class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms" src="images/partners/partner1.png"></li>
                    <li><img class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms" src="images/partners/partner2.png"></li>
                    <li><img class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms" src="images/partners/partner3.png"></li>
                    <li><img class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1200ms" src="images/partners/partner4.png"></li>
                    <li><img class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1500ms" src="images/partners/partner5.png"></li>
                </ul>
            </div>        
        </div><!--/.container-->
    </section><!--/#partner-->

    <section id="conatcat-info">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <div class="media contact-info wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="pull-left">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="media-body">
                            <h2>Have a question or need a custom quote?</h2>
                            <p>Make sure you've selected the correct space to know about your Institute. This way your question is most likely to be answered. Call us : +91-20-41227918</p>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/.container-->    
    </section><!--/#conatcat-info-->
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
                            <li><a href="Application_support.aspx">application Production Support</a></li>
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
                                 <a class="navbar-brand" onclick="openNewWindows1()" ><img src="images/map1.png" alt="logo" style="cursor:pointer; height: 193px; width: 220px;"  /></a>
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
                    &copy; 2013 <a target="_blank" href="http://rcipune.in/" title="R C Infotech">R C Infotech, Pune</a>. All Rights Reserved.
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