<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewGrid.aspx.cs" Inherits="NewGrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
     .Initial
        {
          display: block;
          padding: 4px 18px 4px 18px;
          float: left;
          /*background: url("../Images/InitialImage.png") no-repeat right top;*/
          color: Black;
          font-weight: bold;
        }
        .Initial:hover
        {
          color: White;
          /*background: url("../Images/SelectedButton.png") no-repeat right top;*/
        }
        .Clicked
        {
          float: left;
          display: block;
          /*background: url("../Images/SelectedButton.png") no-repeat right top;*/
          padding: 4px 18px 4px 18px;
          color: Black;
          font-weight: bold;
          color: White;
        }
        .auto-style1 {
            font-size: small;
        }
        .auto-style2 {
            font-size: medium;
        }
        .auto-style3 {
            width: 1009px;
        }
        .auto-style4 {
            font-size: small;
            width: 569px;
        }
        .auto-style5 {
            width: 569px;
        }
        .auto-style6 {
            padding: 10px 15px;
            border-bottom: 1px solid transparent;
            border-top-left-radius: 3px;
            border-top-right-radius: 3px;
            font-size: x-large;
            color: #0000FF;
            width: 966px;
        }
        .auto-style7 {
            width: 569px;
            text-align: left;
        }
    </style>
    <script language="javascript" type="text/javascript">
        function CheckNumeric(e) {

            if (window.event) // IE 
            {
                if ((e.keyCode < 48 || e.keyCode > 57) & e.keyCode != 8) {
                    event.returnValue = false;
                    return false;

                }
            }
            else { // Fire Fox
                if ((e.which < 48 || e.which > 57) & e.which != 8) {
                    e.preventDefault();
                    return false;

                }
            }
        }

    </script>
     
   <%-- <script>
    function checkNum()
{
 
if ((event.keyCode > 64 && event.keyCode < 91) || (event.keyCode > 96 && event.keyCode < 123) || event.keyCode == 8)
   return true;
else
   {
       alert("Please enter only char");
       return false;
       document.forms[0].reset();
    
       //document.getElementById("<%= txtCl_Name.ClientID %>").value = "";
   }
    }
        </script>--%>
</head>
 <body style="font-family: tahoma">
      
  <form id="form1" runat="server"  >
      <div class="container" style="width: 785px; height: 889px; text-align: center;">
       
        <asp:Panel ID="Panel2" runat="server" BackColor="#CCCCCC" class="panel panel-default">
       
      

            <div class="auto-style6"> Client Details</div>
    <table width="80%" align="center" style="background-color:#CCCCCC">
      <tr>
        <td class="auto-style3">
          <asp:Button Text="Create Client" BorderStyle="None" ID="Tab1" CssClass="Initial" runat="server"
              OnClick="Tab1_Click" class="btn btn-primary"/>
          <asp:Button Text="Update Client" BorderStyle="None" ID="Tab2" CssClass="Initial" runat="server"
              OnClick="Tab2_Click" class="btn btn-primary"/>
          <asp:Button Text="Add Contacts" BorderStyle="None" ID="Tab3" CssClass="Initial" runat="server"
             OnClick="Tab3_Click" class="btn btn-primary"/>
          <asp:MultiView ID="MainView" runat="server">
            <asp:View ID="View1" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                <tr>
                  <td>
                    
                      <table style="width: 783px" class="table table-hover" align="center" >
                          <tr>
                              <td>
                                  <h3 class="auto-style2"><b>ClientId:</b></h3>
                              </td>
                              <td>
                                  <asp:TextBox ID="txtClientId" runat="server" class="form-control"  Height="30px" Width="250px" ReadOnly="True" CssClass="form-control"></asp:TextBox></td>
                          </tr>
                          <tr>
                              <td>
                                  <h3 class="auto-style2"><b>Client Name:</b></h3>
                              </td>
                              <td>
                                  <asp:TextBox ID="txtCl_Name" runat="server" class="form-control"  Height="30px" Width="250px" CssClass="form-control" CausesValidation="True" style="text-transform:uppercase;"></asp:TextBox></td> <%--onkeypress ="checkNum();"--%>
                               <td>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"
                                                              ErrorMessage="Name is requied" ValidationGroup="g1" Text="*" ControlToValidate="txtCl_Name" EnableClientScript="false"></asp:RequiredFieldValidator></td>
                                                      <td>
                                                          <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" ForeColor="Red"
                                                              ErrorMessage="Please enter only characters" Text="*" ValidationGroup="g1" SetFocusOnError="true" ControlToValidate="txtCl_Name" ValidationExpression="^[A-Za-z]*$" EnableClientScript="false"></asp:RegularExpressionValidator></td>
                          </tr>
                          <tr>
                              <td>
                                  <h3 class="auto-style2"><b>Address:</b></h3>
                              </td>
                              <td>
                                  <asp:TextBox ID="txtAddress" runat="server" class="form-control"  Height="30px" Width="250px" CssClass="form-control"  style="text-transform:uppercase;"></asp:TextBox></td>
                              <td>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Address is required" ForeColor="Red"  ValidationGroup="g1" Text="*" ControlToValidate="txtAddress" EnableClientScript="false"></asp:RequiredFieldValidator></td>
                                                            <%-- <td>
                                                          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ForeColor="Red"
                                                              ErrorMessage="characters" ValidationGroup="g1" Text="*" ControlToValidate="txtAddress" ValidationExpression="^[A-Za-z]*$" EnableClientScript="false"></asp:RegularExpressionValidator></td>--%>
                          </tr>
                          <tr>
                              <td>
                                  <h3 class="auto-style2"><strong>Installation</strong><b> Date:</b></h3>
                              </td>
                              <td>  
                                  <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                                      <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                      <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                      <OtherMonthDayStyle ForeColor="#999999" />
                                      <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                      <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                      <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                      <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                      <WeekendDayStyle BackColor="#CCCCFF" />
                                  </asp:Calendar>
                                  
                                   <br />
                                  
                                   <asp:TextBox ID="txtCont_Person" runat="server" class="form-control"  Height="30px" Width="250px" ReadOnly="True"></asp:TextBox>
                                      </td>
                             
                               <td>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red"
                                                              ErrorMessage="Date requied"  ValidationGroup="g1" Text="*" ControlToValidate="txtCont_Person" EnableClientScript="false"></asp:RequiredFieldValidator></td>                                                
                          </tr>                       
                          <tr>
                              <td colspan="3">
                                                          <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please enter valid details" ForeColor="Red"
                                                              Font-Italic="true" Font-Underline="true" ValidationGroup="g1" EnableClientScript="false"/>
                                                      </td>
                          </tr>
                          <tr>
                              <td colspan="2">
                                  <asp:Button ID="btnAdd1" ValidationGroup="g1" runat="server" Text="Save" class="btn btn-primary btn-lg" OnClientClick="return validate();" OnClick="btnAdd_Click" CssClass="btn" />
                                  <%--<asp:Button ID="btnDelete" runat="server" Text="Delete" class="btn btn-primary btn-lg"></asp:Button>--%>
                                  <asp:Button ID="btnCancel1" ValidationGroup="g1" runat="server" Text="Cancel" class="btn btn-primary btn-lg" OnClick="btnCancel1_Click" CssClass="btn"></asp:Button>
                                  <asp:Label ID="lblAddClient" runat="server" OnLoad="Page_Load" class="label label-success"></asp:Label>
                              </td>

                          </tr>
                      </table>
                    
                  </td>
                </tr>
              </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                <tr>
                  <td>
                      <br />
                            &nbsp;<table style="width: 800px; font-size: medium;" class="table table-hover">
                                                  <tr>
                                                      <td class="auto-style1">
                                                          <h3 class="auto-style2"><b>ClientId:</b></h3>
                                                      </td>
                                                      <td class="auto-style4">
                                                          <%--<asp:DropDownList ID="dropCl_id2" runat="server" class="form-control" Height="44px" Width="286px"></asp:DropDownList>--%>
                                                          <div class="text-left">
                                                              <asp:TextBox ID="txtCl_id2" runat="server" class="form-control" CssClass="form-control" Height="30px" ReadOnly="True" Width="250px"></asp:TextBox>
                                                          </div>
                                                          <br />
                                                      </td>
                                                  </tr>
                                                  <tr>
                                                      <td class="auto-style1">
                                                          <h3 class="auto-style2"><b>Client Name:</b></h3>
                                                      </td>
                                                      <td class="auto-style7"> 
                                                          <asp:DropDownList ID="dropName" AppendDataBoundItems="true" runat="server" AutoPostBack="true" CssClass="dropdown" Height="30px" OnSelectedIndexChanged="dropName_SelectedIndexChanged" Width="250px">
                                                           <asp:ListItem Text="Select Client" Value="1" />
                                                          
                                                          </asp:DropDownList>
                                                      </td>
                                                      <%--<td>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red"
                                                              ErrorMessage="Select " Text="*" ControlToValidate="txtCl_Name" EnableClientScript="false"></asp:RequiredFieldValidator></td>
                                                      <td>--%>
                                                          <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ForeColor="Red"
                                                              ErrorMessage="characters" Text="*" ControlToValidate="txtCl_Name" ValidationExpression="^[A-Za-z]*$" EnableClientScript="false"></asp:RegularExpressionValidator></td>
                                                  --%></tr>
                                                  <tr>
                                                      <td>
                                                          <h3 class="auto-style2"><b>Address:</b></h3>
                                                      </td>
                                                      <td class="auto-style5">
                                                          <asp:TextBox ID="TextBox3" runat="server" class="form-control"  Height="30px" Width="250px" CssClass="form-control"></asp:TextBox></td>
                                                      <td>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red"
                                                              ErrorMessage="Address is requied" Text="*" SetFocusOnError="true" ValidationGroup="g2" ControlToValidate="TextBox3" EnableClientScript="false"></asp:RequiredFieldValidator></td>
                                                      <%--<td>
                                                          <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ForeColor="Red"
                                                              ErrorMessage="characters" Text="*" ValidationGroup="g2" ControlToValidate="TextBox3" ValidationExpression="^[A-Za-z]*$" EnableClientScript="false"></asp:RegularExpressionValidator></td>
                                                --%>  </tr>
                                                  <tr>
                                                      <td>
                                                          <h3><strong><span class="auto-style2">Installation</span></strong><b> </b><span class="auto-style2"><strong>Date</strong></span><b>:</b></h3>
                                                      </td>
                                                      <td class="auto-style5">
                                                          <asp:TextBox ID="TextBox4" runat="server" class="form-control"  Height="30px" Width="250px" OnTextChanged="TextBox4_TextChanged" ReadOnly="True" CssClass="form-control"></asp:TextBox>
                                                          <br />
                                                          <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                                                              <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                                              <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                                              <OtherMonthDayStyle ForeColor="#999999" />
                                                              <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                                              <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                                              <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                                              <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                                              <WeekendDayStyle BackColor="#CCCCFF" />
                                                          </asp:Calendar>
                                                      </td>
                                                      <td>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="Red"
                                                              ErrorMessage="Installation date is requied" Text="*" SetFocusOnError="true" ValidationGroup="g2" ControlToValidate="TextBox4" EnableClientScript="false"></asp:RequiredFieldValidator></td>
                                                      <td>
                                                          <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ForeColor="Red"
                                                              ErrorMessage="characters" Text="*" ValidationGroup="g2" ControlToValidate="TextBox4" ValidationExpression="^[A-Za-z]*$" EnableClientScript="false"></asp:RegularExpressionValidator></td>
                                                  --%></tr>
                                                  <%--<tr>
                                                      <td>
                                                          <h3><b>Contact Number:</b></h3>
                                                      </td>
                                                      <td>
                                                          <asp:TextBox ID="TextBox5" Height="25px" Width="250px" runat="server" class="form-control" MaxLength="13" ToolTip="Please enter only numbers"></asp:TextBox></td>
                                                      <td>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ForeColor="Red"
                                                              ErrorMessage="Mobile Number is requied" ValidationGroup="g2" Text="*" ControlToValidate="TextBox5" EnableClientScript="false"></asp:RequiredFieldValidator></td>
                                                  </tr>--%>
                                                  <tr>
                                                      <td colspan="3">
                                                          <asp:ValidationSummary ID="ValidationSummary2" runat="server" HeaderText="Please enter valid details" ForeColor="Red"
                                                              Font-Italic="true" ValidationGroup="g2" Font-Underline="true" EnableClientScript="false" />
                                                      </td>
                                                  </tr>
                                                  <tr>
                                                      <td colspan="2">
                                                          <asp:Button ID="btnUpdate" ValidationGroup="g2" runat="server" Text="Update" class="btn btn-primary btn-lg" OnClick="btnUpdate_Click" CssClass="btn "></asp:Button>
                                                          <asp:Button ID="btnDelete" ValidationGroup="g2" runat="server" Text="Delete" class="btn btn-primary btn-lg" OnClick="btnDelete_Click" CssClass="btn"></asp:Button>
                                                          <asp:Button ID="btnCancel2" ValidationGroup="g2" runat="server" Text="Cancel" class="btn btn-primary btn-lg" OnClick="btnCancel2_Click" CssClass="btn"></asp:Button>
                                                          <asp:Label ID="lblUpdateClient" runat="server" OnLoad="Page_Load" CssClass="label label-success"></asp:Label>
                                                      </td>

                                                  </tr> 
                                              </table>
                  </td>
                </tr>
              </table>
            </asp:View>
            <asp:View ID="View3" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid" >
                <tr>
                  <td>
                    &nbsp;<table style="width: 783px" class="table table-hover">
                                                  <tr>
                                                      <td class="auto-style1">
                                                          <h3 class="auto-style2"><b>ClientId:</b></h3>
                                                      </td>
                                                      <td class="auto-style1">
                                                          <%--<asp:DropDownList ID="dropCl_id2" runat="server" class="form-control" Height="44px" Width="286px"></asp:DropDownList>--%>
                                                          <div class="text-left">
                                                              <asp:TextBox ID="txtCl_Id3" runat="server" CssClass="form-control" ReadOnly="True" Width="244px"></asp:TextBox>
                                                          </div>
                                                          <br />
                                                      </td>
                                                  </tr>
                                                  <tr>
                                                      <td>
                                                          <h3 class="auto-style2"><b>Client Name:</b></h3>
                                                      </td>
                                                      <td class="text-left">
                                                          <%--<asp:TextBox ID="TextBox2" Width="286px" runat="server" class="form-control"></asp:TextBox>--%>
                                                          <asp:DropDownList ID="Drop_NamePers" AppendDataBoundItems="true" runat="server" OnSelectedIndexChanged="Drop_NamePers_SelectedIndexChanged" Height="30px" Width="244px" AutoPostBack="true" CssClass="dropdown">
                                                          <asp:ListItem Text="Select Client" Value="1" />
                                                          </asp:DropDownList>
                                                          <br />
                                                      </td>
                                                      <%--<td>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidatorV3" runat="server" ForeColor="Red"
                                                              ErrorMessage="Name is requied" Text="*" ControlToValidate="txtCl_Name" EnableClientScript="false"></asp:RequiredFieldValidator></td>
                                                      <td>
                                                          <asp:RegularExpressionValidator ID="RegularExpressionValidatorV3" runat="server" ForeColor="Red"
                                                              ErrorMessage="characters" Text="*" ControlToValidate="txtCl_Name" ValidationExpression="^[A-Za-z]*$" EnableClientScript="false"></asp:RegularExpressionValidator></td>
                                                  --%></tr>
                                                  <tr>
                                                      <td>
                                                          <h3 class="auto-style2"><b>Address:</b></h3>
                                                      </td>
                                                      <td>
                                                          <asp:TextBox ID="txtAddress3" runat="server" Width="244px" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                                      </td>
                                                      <%--<td>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ForeColor="Red"
                                                              ErrorMessage="Name is requied" Text="*" ControlToValidate="txtAddress" EnableClientScript="false"></asp:RequiredFieldValidator ></td>
                                                      <td>
                                                          <asp:RegularExpressionValidator ID="RegularExpressionValidatorV4" runat="server" ForeColor="Red"
                                                              ErrorMessage="characters" Text="*" ControlToValidate="txtAddress" ValidationExpression="^[A-Za-z]*$" EnableClientScript="false"></asp:RegularExpressionValidator></td>
                                                --%>  </tr>
                                                  <tr>
                                                      <td>
                                                          <h3 class="auto-style2"><b>Contact Person:</b></h3>
                                                      </td>
                                                      <td>
                                                          <asp:TextBox ID="txtContPers3" runat="server" Width="244px" CssClass="form-control" style="text-transform:uppercase;"></asp:TextBox>
                                                      </td>
                                                      <td>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidatorV7" runat="server" ForeColor="Red"
                                                              ErrorMessage="Name is requied" Text="*" SetFocusOnError="true" ValidationGroup="g3" ControlToValidate="txtContPers3"></asp:RequiredFieldValidator></td>
                                                      <%--<td>
                                                          <asp:RegularExpressionValidator ID="RegularExpressionValidatorV5" runat="server" ForeColor="Red"
                                                              ErrorMessage="characters" Text="*" ValidationGroup="g3" ControlToValidate="txtContPers3" ValidationExpression="^[A-Za-z]*$" EnableClientScript="false"></asp:RegularExpressionValidator></td>--%>
                                                  </tr>
                                                  <tr>
                                                      <td>
                                                          <h3 class="auto-style2"><b>Contact Number:</b></h3>
                                                      </td>
                                                      <td>
                                                          <asp:TextBox ID="txtContNo3" runat="server" Width="244px" MaxLength="13" CssClass="form-control" onkeypress="CheckNumeric(event);" ></asp:TextBox>
                                                      </td>
                                                      <td>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidatorV8" runat="server" ForeColor="Red"
                                                              ErrorMessage="Mobile Number is requied" SetFocusOnError="true" ValidationGroup="g3" Text="*" ControlToValidate="txtContNo3" EnableClientScript="false"></asp:RequiredFieldValidator></td>
                                                  </tr>
                                                  <tr>
                                                      <td colspan="3">
                                                          <asp:ValidationSummary ID="ValidationSummaryV2" runat="server" HeaderText="Please enter valid details" ForeColor="Red"
                                                              Font-Italic="true" ValidationGroup="g3" Font-Underline="true" EnableClientScript="false" />
                                                      </td>
                                                  </tr>
                                                  <tr>
                                                      <td colspan="2">
                                                          <asp:Button ID="Btn_AddPerson" ValidationGroup="g3" runat="server" Text="Save" OnClick="Btn_AddPerson_Click" CssClass="btn" />
                                                          &nbsp;<asp:Button ID="btnCancel3" ValidationGroup="g3" runat="server" Text="Cancel" class="btn btn-primary btn-lg" OnClick="btnCancel3_Click" CssClass="btn"></asp:Button>
                                                          <asp:Label ID="lblAddContact" runat="server" OnLoad="Page_Load" CssClass="label label-success"></asp:Label>
                                                      </td>

                                                  </tr> 
                                              </table>
                  </td>
                </tr>
              </table>
            </asp:View>
          </asp:MultiView>
        </td>
      </tr>
    </table>
            <div class="panel-footer">CopyRight RCInfotech 2017</div>
            
             </asp:Panel>
        </div>
  </form>
         
</body>
</html>
