<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customer_Master.aspx.cs" Inherits="Customer_Master" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer_Master</title>
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
            height: 46px;
        }
    </style>
</head>
<body style="font-family: tahoma">
  <form id="form1" runat="server">
      <table width="80%" align="center">
          <tr>
              <td>
                  <asp:Button Text="Tab 1" BorderStyle="None" ID="Tab1" CssClass="Initial" runat="server"
                      OnClientActiveTabChanged ="Tab1_Click" />
                  <asp:Button Text="Tab 2" BorderStyle="None" ID="Tab2" CssClass="Initial" runat="server"
                      OnClientActiveTabChanged ="Tab2_Click" OnClick="Tab2_Click1" />
                  <%-- <asp:Button Text="Tab 3" BorderStyle="None" ID="Tab3" CssClass="Initial" runat="server"
                      OnClick="Tab3_Click" />--%>
                  <asp:MultiView ID="MainView" runat="server">
                      <asp:View ID="View1" runat="server">
                          <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                              <tr>
                                  <td>
                                      <h3>
                                          <span>
                                              <table style="width: 783px">
                                                  <tr>
                                                      <td>
                                                          <h3><b>ClientId:</b></h3>
                                                      </td>
                                                      <td>
                                                          <asp:TextBox ID="txtClientId" Width="286px" runat="server" class="form-control"></asp:TextBox></td>
                                                  </tr>
                                                  <tr>
                                                      <td>
                                                          <h3><b>Client Name:</b></h3>
                                                      </td>
                                                      <td>
                                                          <asp:TextBox ID="txtCl_Name" Width="286px" runat="server" class="form-control"></asp:TextBox></td>
                                                     <%-- <td>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"
                                                              ErrorMessage="Name is requied" Text="*" ControlToValidate="txtCl_Name"></asp:RequiredFieldValidator></td>
                                                      <td>
                                                          <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" ForeColor="Red"
                                                              ErrorMessage="characters" Text="*" ControlToValidate="txtCl_Name" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator></td>--%>
                                                  </tr>
                                                  <tr>
                                                      <td>
                                                          <h3><b>Address:</b></h3>
                                                      </td>
                                                      <td>
                                                          <asp:TextBox ID="txtAddress" Width="286px" runat="server" class="form-control"></asp:TextBox></td>
                                                      <%--<td>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red"
                                                              ErrorMessage="Name is requied" Text="*" ControlToValidate="txtAddress"></asp:RequiredFieldValidator></td>
                                                      <td>
                                                          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ForeColor="Red"
                                                              ErrorMessage="characters" Text="*" ControlToValidate="txtAddress" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator></td>--%>
                                                  </tr>
                                                  <tr>
                                                      <td>
                                                          <h3><b>Contact Person:</b></h3>
                                                      </td>
                                                      <td>
                                                          <asp:TextBox ID="txtCont_Person" Width="286px" runat="server" class="form-control"></asp:TextBox></td>
                                                     <%-- <td>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red"
                                                              ErrorMessage="Name is requied" Text="*" ControlToValidate="txtCont_Person"></asp:RequiredFieldValidator></td>
                                                      <td>
                                                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="Red"
                                                              ErrorMessage="characters" Text="*" ControlToValidate="txtCont_Person" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator></td>
                                                  --%></tr>
                                                  <tr>
                                                      <td>
                                                          <h3><b>Contact Number:</b></h3>
                                                      </td>
                                                      <td>
                                                          <asp:TextBox ID="txtmobile" Width="285px" runat="server" class="form-control" MaxLength="13" ToolTip="Please enter only numbers"></asp:TextBox></td>
                                                     <%-- <td>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red"
                                                              ErrorMessage="Mobile Number is requied" Text="*" ControlToValidate="txtmobile"></asp:RequiredFieldValidator></td>--%>
                                                  </tr>
                                                  <tr>
                                                      <%--<td colspan="3">
                                                          <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please enter valid details" ForeColor="Red"
                                                              Font-Italic="true" Font-Underline="true" />
                                                      </td>--%>
                                                  </tr>
                                                  <tr>
                                                      <td colspan="2">
                                                          <asp:Button ID="btnAdd1" runat="server" Text="Add" class="btn btn-primary btn-lg" OnClientClick="return validate();" OnClick="btnAdd_Click" />
                                                          <%--<asp:Button ID="btnDelete" runat="server" Text="Delete" class="btn btn-primary btn-lg"></asp:Button>--%>
                                                          <asp:Button ID="btnCancel1" runat="server" Text="Cancel" class="btn btn-primary btn-lg" OnClick="btnCancel_Click"></asp:Button>
                                                          <asp:Label ID="Label1" runat="server" OnLoad="Page_Load"></asp:Label>
                                                      </td>

                                                  </tr>
                                              </table>
                                          </span>
                                      </h3>
                                  </td>
                              </tr>
                          </table>
                      </asp:View>
                      <asp:View ID="View2" runat="server">
                          <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                              <tr>

                                  <td>
                                         <table style="width: 783px">
                                                  <tr>
                                                      <td class="auto-style1">
                                                          <h3><b>ClientId:</b></h3>
                                                      </td>
                                                      <td class="auto-style1">
                                                          <asp:DropDownList ID="dropCl_id2" runat="server" class="form-control" Height="44px" Width="286px"></asp:DropDownList>
                                                          <br />
                                                      </td>
                                                  </tr>
                                                  <tr>
                                                      <td>
                                                          <h3><b>Client Name:</b></h3>
                                                      </td>
                                                      <td>
                                                          <%--<asp:TextBox ID="TextBox2" Width="286px" runat="server" class="form-control"></asp:TextBox>--%>
                                                          <asp:DropDownList ID="dropName" runat="server" Height="35px" Width="286px"></asp:DropDownList>
                                                          <br />
                                                      </td>
                                                     <%-- <td>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red"
                                                              ErrorMessage="Name is requied" Text="*" ControlToValidate="txtCl_Name"></asp:RequiredFieldValidator></td>
                                                      <td>
                                                          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ForeColor="Red"
                                                              ErrorMessage="characters" Text="*" ControlToValidate="txtCl_Name" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator></td>
                                                  --%></tr>
                                                  <tr>
                                                      <td>
                                                          <h3><b>Address:</b></h3>
                                                      </td>
                                                      <td>
                                                          <asp:TextBox ID="TextBox3" Width="286px" runat="server" class="form-control"></asp:TextBox></td>
                                                      <%--<td>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red"
                                                              ErrorMessage="Name is requied" Text="*" ControlToValidate="txtAddress"></asp:RequiredFieldValidator></td>
                                                      <td>
                                                          <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ForeColor="Red"
                                                              ErrorMessage="characters" Text="*" ControlToValidate="txtAddress" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator></td>
                                                  --%></tr>
                                                  <tr>
                                                      <td>
                                                          <h3><b>Contact Person:</b></h3>
                                                      </td>
                                                      <td>
                                                          <asp:TextBox ID="TextBox4" Width="286px" runat="server" class="form-control"></asp:TextBox></td>
                                                     <%-- <td>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="Red"
                                                              ErrorMessage="Name is requied" Text="*" ControlToValidate="txtCont_Person"></asp:RequiredFieldValidator></td>
                                                      <td>
                                                          <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ForeColor="Red"
                                                              ErrorMessage="characters" Text="*" ControlToValidate="txtCont_Person" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator></td>
                                                  --%></tr>
                                                  <tr>
                                                      <td>
                                                          <h3><b>Contact Number:</b></h3>
                                                      </td>
                                                      <td>
                                                          <asp:TextBox ID="TextBox5" Width="285px" runat="server" class="form-control" MaxLength="13" ToolTip="Please enter only numbers"></asp:TextBox></td>
                                                     <%-- <td>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ForeColor="Red"
                                                              ErrorMessage="Mobile Number is requied" Text="*" ControlToValidate="txtmobile"></asp:RequiredFieldValidator></td>
                                                 --%> </tr>
                                                  <tr>
                                                      <%--<td colspan="3">
                                                          <asp:ValidationSummary ID="ValidationSummary2" runat="server" HeaderText="Please enter valid details" ForeColor="Red"
                                                              Font-Italic="true" Font-Underline="true" />
                                                      </td>--%>
                                                  </tr>
                                                  <tr>
                                                      <td colspan="2">
                                                          <asp:Button ID="btnAdd2" runat="server" Text="Add" class="btn btn-primary btn-lg" OnClientClick="return validate();" OnClick="btnAdd_Click" />
                                                          <asp:Button ID="btnDelete" runat="server" Text="Delete" class="btn btn-primary btn-lg"></asp:Button>
                                                          <asp:Button ID="btnCancel2" runat="server" Text="Cancel" class="btn btn-primary btn-lg" OnClick="btnCancel_Click"></asp:Button>
                                                          <asp:Label ID="Label2" runat="server" OnLoad="Page_Load"></asp:Label>
                                                      </td>

                                                  </tr> 
                                              </table>
                                  </td>
                              </tr>
                          </table>
                      </asp:View>
                      <%--<asp:View ID="View3" runat="server">
                          <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                              <tr>
                                  <td>
                                      <h3>View 3
                                      </h3>
                                  </td>
                              </tr>
                          </table>
                      </asp:View>--%>
                  </asp:MultiView>
              </td>
          </tr>
      </table>
  </form>
</body>
</html>
