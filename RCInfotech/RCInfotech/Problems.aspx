<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Problems.aspx.cs" Inherits="Problems_Solutions" %>


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
     <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
            text-align: left;
        }
    </style>
    <script type="text/javascript">
        function setHeight(txtProblem) {
            txtProblem.style.height = txtProblem.scrollHeight + "px";
        }
</script>
</head><!--/head-->

<body>
     <form id="form2" runat="server">
    <div class="container" style="width: 785px; height: 889px; text-align: center;">   
        <asp:Panel ID="Panel2" runat="server" BackColor="#CCCCCC" class="panel panel-default">
            <div class="panel-heading"> <span class="auto-style4" style="font-size: x-large; color: #0000FF">Client Problems</span></div>
            <table class="table table-hover">
                <tr>
                    <td><asp:Calendar ID="Calendar1" runat="server"  style="text-align: center" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged" VisibleDate="2017-06-23" Height="200px" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar></td>
                    <td><asp:Button ID="Button1" runat="server" Text="Select Date" OnClick="Button1_Click" Height="30px" Width="97px" CssClass="btn" /></td>
                </tr>
                <tr>
                    <td>
                        <div class="auto-style1">
                            <asp:TextBox ID="txtDate" runat="server" CssClass="form-control" Height="30px" style="margin-top: 0px" Width="250PX" ReadOnly="True"></asp:TextBox>
                        </div>
                    
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" SetFocusOnError="true"
                                                              ErrorMessage="Date is requied" ValidationGroup="g1" Text="*" ControlToValidate="txtDate" EnableClientScript="false"></asp:RequiredFieldValidator></td>
                
                    <td class="text-justify">&nbsp; <asp:TextBox ID="txtTime" runat="server" Height="30px" Width="250PX" CssClass="form-control"></asp:TextBox></td>
                    <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" SetFocusOnError="true"
                                                              ErrorMessage="Time is requied" ValidationGroup="g1" Text="*" ControlToValidate="txtTime" EnableClientScript="false"></asp:RequiredFieldValidator></td>
                </tr>
              
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server" Text="Select Client"></asp:Label></td>
                    <td class="auto-style1"><asp:DropDownList ID="Drop_NamePers" runat="server" OnSelectedIndexChanged="Drop_NamePers_SelectedIndexChanged" AutoPostBack="true" Height="30px" Width="250PX" CssClass="dropdown">
                                                          </asp:DropDownList></td>     
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label8" runat="server" Text="Select Contact Person"></asp:Label>
                    </td>   
                    <td class="auto-style1"><asp:DropDownList ID="dropPerson" runat="server" Height="30px" Width="250PX" AutoPostBack="true" OnSelectedIndexChanged="dropPerson_SelectedIndexChanged" CssClass="dropdown">
                     </asp:DropDownList></td>
                    
                </tr>
                <tr>
                    <td class="auto-style1"><asp:Label ID="Label2" runat="server" Text="Contact NO:"></asp:Label></td>
                    <td class="auto-style1"><asp:TextBox ID="txtContact" runat="server" Height="35px" Width="250PX" CssClass="form-control" ReadOnly="True"></asp:TextBox></td>
                   
                </tr>
                  <tr>
                    <td class="auto-style1"> <asp:Label ID="Label1" runat="server" Text="Received By" ></asp:Label></td>
                    <td class="text-justify"><asp:TextBox ID="txtRecvBy" runat="server" Height="30px" Width="250PX" CssClass="form-control"  style="text-transform:uppercase;"></asp:TextBox></td>
                    <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" SetFocusOnError="true"
                     ErrorMessage="Name is requied" ValidationGroup="g1" Text="*" ControlToValidate="txtRecvBy" EnableClientScript="false"></asp:RequiredFieldValidator></td>
                   
                    <td>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" ForeColor="Red"
                         ErrorMessage="Please enter only characters" Text="*" ValidationGroup="g1" SetFocusOnError="true" ControlToValidate="txtRecvBy" ValidationExpression="^[A-Za-z]*$" EnableClientScript="false"></asp:RegularExpressionValidator></td>
                   
                </tr>
               <tr>
                   <td class="auto-style1">
                       <asp:Label ID="Label5" runat="server" Text="Problem Type"></asp:Label></td>
                   <td class="auto-style1"><asp:DropDownList ID="DropPr_type" runat="server" Height="34px" Width="250PX" AutoPostBack="true" CssClass="dropdown">
                       <asp:ListItem Text="Select" Value="1" />
                         <asp:ListItem>Pending Problem</asp:ListItem>
                         <asp:ListItem>Solved Problem</asp:ListItem>
                         <asp:ListItem>Technical Problem</asp:ListItem>
                         <asp:ListItem>Developement Problem</asp:ListItem>
                     </asp:DropDownList></td>
               </tr>
                <tr>
                    <td class="auto-style1"><asp:Label ID="Label3" runat="server" Text="Problem Statment" Height="30px" Width="97px"></asp:Label></td>
                    <td class="auto-style1">   <asp:TextBox ID="txtProblem" runat="server" TextMode="MultiLine" CssClass="form-control" Height="30PX" Width="250PX" onkeyup="setHeight(this);" onkeydown="setHeight(this);" style="text-transform:uppercase;"></asp:TextBox></td>
                    <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" SetFocusOnError="true"  AutoPostBack="false"
                     ErrorMessage="Problem Statement is requied" ValidationGroup="g1" Text="*" ControlToValidate="txtProblem" EnableClientScript="false"  ClientIDMode="Static"></asp:RequiredFieldValidator>   
                </tr>
                   <tr>
                       <td>    <asp:Button ID="btnSubmit" runat="server" ValidationGroup="g1" Text="Save" OnClick="btnSubmit_Click" Height="30px" Width="97px" CssClass="btn" />
                       <asp:Button ID="btnCancel" runat="server" Text="Cancel" Height="30px" Width="97px" CssClass="btn" OnClick="btnCancel_Click" /></td>
                       <td>  <asp:Label ID="Label4" runat="server"></asp:Label></td>
                   </tr>   
                <tr>
                              <td colspan="3">
                                                          <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please enter valid details" ForeColor="Red"
                                                              Font-Italic="true" Font-Underline="true" ValidationGroup="g1" EnableClientScript="false"/>
                                                      </td>
                          </tr>                                
             </table>
               <div class="panel-footer">CopyRight RCInfotech 2017</div>           
             </asp:Panel>
        </div>
     </form>
       


<%--              <section id="bottom">
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
                </div>--%><!--/.col-md-3-->


                 <%--<div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Contact Info
                        </h3>--%>                        <%-- <div class="span4">
                        	<h2 class="title"><span>Contact Info</span></h2>
                            <div id="map">--%><%--<iframe width="100%" height="310" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://goo.gl/maps/2Vr2xN4Bf7P2"></iframe>--%><%--<a class="navbar-brand" onclick="openNewWindows1()" ><img src="images/map1.png" alt="logo" style="cursor:pointer; height: 192px; width: 238px;"  /></a>
                            </div>
                              </div>--%>

             <%--   <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Address
                        </h3>
                         <p class="auto-style1"><span class="auto-style2"></span>R C Infotech,C-2,Office No.10,<br/>2nd Floor,Brahma Estate,<br/>NIBM Road,Next to Jyoti Restaurant,<br/> Kondwa Khurd,Pune-411040</p>
                            <p class="auto-style3"><b>Phone:</b> (020)41227918/65334460-61<br/><b>Email:</b><a href="mailto:#">info@rcipune.in</a>, <br/><b>Web:</b> <a href="http://www.rcipune.in" target="_blank">www.rcipune.in</a></p>                           
                        </div>

            </div>
        </div>
            </div>
    </section>--%><!--/#bottom-->

<%--    <footer id="footer" class="midnight-blue">
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
    <script src="js/wow.min.js"></script>--%>
</body>
</html>