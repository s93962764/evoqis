using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Net;
using System.IO;
using System.Web.Configuration;
using System.Text.RegularExpressions;
using System.Data;
using System.Globalization;

public partial class NewGrid : System.Web.UI.Page
{
    string cs;
    SqlConnection con,con1;
    SqlCommand cmd;
    DataSet ds = new DataSet();
    int cl_id = 1;
    bool flag = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Drop_NamePers.Items.Add(new ListItem("Select"));
        //Drop_NamePers.SelectedIndex = Drop_NamePers.Items.IndexOf(Drop_NamePers.Items.FindByValue("Select"));

        
            var today = DateTime.Today;
            con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;user Id=rcinfotech;password=Rci@1234");
            //string qry = "SELECT coalesce(max(cl_id),0) FROM [rc_master] WHERE cl_date='" + @today + "'";
            string qry = "SELECT coalesce(max(cl_id),0) FROM [rc_master]";

            // con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;user Id=rcinfotech;password=Rci@1234");
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader reader = null;
            int sr_no = 0;
            con.Open();
            sr_no = (int)cmd.ExecuteScalar();
            if (sr_no == 0)
            {
                sr_no = 1;
                txtClientId.Text = sr_no.ToString();
            }
            else
            {
                sr_no = sr_no + 1;
                txtClientId.Text = sr_no.ToString();
            }
            con.Close();
            if (!IsPostBack)
            {
                Tab1.CssClass = "Clicked";
                MainView.ActiveViewIndex = 0;
            }
            
        }

   protected void Tab1_Click(object sender, EventArgs e)
  {
    Tab1.CssClass = "Clicked";
    Tab2.CssClass = "Initial";
    Tab3.CssClass = "Initial";
    MainView.ActiveViewIndex = 0;
  }

  protected void Tab2_Click(object sender, EventArgs e)
  {
     
    Tab1.CssClass = "Initial";
    Tab2.CssClass = "Clicked";
    Tab3.CssClass = "Initial";
    MainView.ActiveViewIndex = 1;
    txtClientId.Text = "";
    txtCl_Name.Text = "";
    txtAddress.Text = "";
    txtCont_Person.Text = "";
    //dropName.Items.Add(new ListItem("Select"));
    //dropName.SelectedIndex = dropName.Items.IndexOf(dropName.Items.FindByValue("Select"));
    con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;user Id=rcinfotech;password=Rci@1234");
    cmd = new SqlCommand("select cl_id,cl_name from rc_master", con);
    con.Open();
    dropName.DataSource = cmd.ExecuteReader();
    dropName.DataTextField = "cl_name";
    dropName.DataBind();
    con.Close();
  }
  protected void Tab3_Click(object sender, EventArgs e)
  {
    Tab1.CssClass = "Initial";
    Tab2.CssClass = "Initial";
    Tab3.CssClass = "Clicked";
    MainView.ActiveViewIndex = 2;
    txtClientId.Text = "";
    txtCl_Name.Text = "";
    txtAddress.Text = "";
    txtCont_Person.Text = "";
    SqlCommand cmdp;
    con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;user Id=rcinfotech;password=Rci@1234");
    cmdp = new SqlCommand("select cl_name from rc_master", con);
    con.Open();
    Drop_NamePers.DataSource = cmdp.ExecuteReader();
    Drop_NamePers.DataTextField = "cl_name";
    Drop_NamePers.DataBind();
    con.Close();
  }
  protected void btnAdd_Click(object sender, EventArgs e)
  {

      con1 = con;
      con1.Open();
      SqlCommand cmdFindName = new SqlCommand();
      cmdFindName.CommandText = "select * from rc_master where cl_name = '"+ txtCl_Name.Text +"' ";
      cmdFindName.Connection = con1;
      SqlDataReader rdFind = cmdFindName.ExecuteReader();
      if (rdFind.Read())
      {
          lblAddClient.Text = "Client Name is already exits..!";
         // txtClientId.Text = "";
          txtCl_Name.Text = "";
          txtAddress.Text = "";
          txtCont_Person.Text = "";
          Calendar1.Visible = true;
          txtCl_Name.Focus();
      }
      else
      {
         // lblAddClient.Text = "Not found";
          int sr_no = 0;
          if (Page.IsValid)
          {
              string qry = "SELECT coalesce(max(cl_id),0) FROM [rc_master]";
              SqlCommand cmd = new SqlCommand(qry, con);
              SqlDataReader reader = null;
              if (con.State == ConnectionState.Open)
              {
                  con.Close();
              }
              con.Open();
              sr_no = (int)cmd.ExecuteScalar();
              if (sr_no == 0)
              {
                  sr_no = 1;
                  txtClientId.Text = sr_no.ToString();
              }
              else
              {
                  sr_no = sr_no + 1;
                  txtClientId.Text = sr_no.ToString();
              }
              con1.Close();
             var today = DateTime.Today;

             //DateTime loadedDate = DateTime.Parse(txtCont_Person.Text, System.);
            // DateTime loadedDate = DateTime.ParseExact(txtCont_Person.Text, "dd/MM/yyyy", null);
            // DateTime loadedDate = DateTime.ParseExact("20/03/2017", "dd/mm/yyyy HH:mm:ss", null);
             //DateTime myDateTime = DateTime.Now;
             //String s = txtCont_Person.Text;
             //string sqlFormattedDate = loadedDate.ToString("dd/MM/yyyy");
             String UrDate = txtCont_Person.Text;
             System.Globalization.DateTimeFormatInfo dateInfo = new System.Globalization.DateTimeFormatInfo();
             dateInfo.ShortDatePattern = "dd/MM/yyyy";
             DateTime validDate = Convert.ToDateTime(UrDate, dateInfo); 
           //  DateTime loadedDate = DateTime.ParseExact("20/03/2017", "dd/mm/yyyy", null);
             //  var today1 = DateTime.Parse(txtCont_Person.Text);

             cmd = new SqlCommand("insert into rc_master(cl_id,cl_date,cl_name,cl_address,cl_JoinDate) values('" + sr_no + "','" + validDate + "','" + txtCl_Name.Text + "','" + txtAddress.Text + "','" + validDate + "')", con);

              {
                  try
                  {
                      if (con.State == ConnectionState.Open)
                      {
                          con.Close();
                      }
                      con.Open();
                      int rowAffected = cmd.ExecuteNonQuery();
                      if (rowAffected > 0)
                      {
                          lblAddClient.ForeColor = System.Drawing.Color.Blue;
                          lblAddClient.Text = "Client Information is saved..!";
                          txtClientId.Enabled = false;
                          txtCl_Name.Enabled = false;
                          txtAddress.Enabled = false;
                          txtCont_Person.Enabled = false;
                          //txtmobile.Enabled = false;
                          con.Close();
                        
                      }
                  }
                  catch (NullReferenceException ex)
                  {
                      lblAddClient.ForeColor = System.Drawing.Color.Red;
                      lblAddClient.Text = "Sorry Data could not be saved.";
                      //this.ActiveControl = txtCl_Name;

                      txtCl_Name.Focus();
                  }
              }
          }
          else
          {
              lblAddClient.Text = "Sorry Data could not be saved.";
          }
          txtClientId.Text = "";
          txtCl_Name.Text = "";
          txtAddress.Text = "";
          txtCont_Person.Text = "";

          txtClientId.Enabled = true;
          txtCl_Name.Enabled = true;
          txtAddress.Enabled = true;
          txtCont_Person.Enabled = true;
          Calendar1.Visible = true;
          this.Page_Load(sender, e);
          btnAdd1.Enabled = true;
      }
      con1.Close();
      con.Close();
  }
   
  protected void dropName_SelectedIndexChanged(object sender, EventArgs e)
  {
     // Label2.Text = "Selected ";

      SqlCommand cmddrop;
      cmddrop = new SqlCommand("select * from rc_master where cl_name= '" + dropName.SelectedValue + "'", con);
      SqlDataReader readerdrop = null;
      con.Open();
      readerdrop = cmddrop.ExecuteReader();
      if (readerdrop.Read())
      {
           txtCl_id2.Text = (readerdrop[0].ToString());
           TextBox3.Text = (readerdrop[3].ToString());
           TextBox4.Text = (readerdrop[4].ToString());
        // TextBox5.Text = (readerdrop[5].ToString());
          con.Close();
      }
  }
  protected void btnUpdate_Click(object sender, EventArgs e)
  {
      if (Page.IsValid)
      {        
              con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;user Id=rcinfotech;password=Rci@1234");
              //   string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
              //create new sqlconnection and connection to database by using connection string from web.config file  
              //SqlConnection con = new SqlConnection(con);
              try
              {

                  
                      con.Open();
                      string qry1 = "UPDATE rc_master SET cl_address=@cl_address,cl_JoinDate=@cl_contPerson where cl_id=" + txtCl_id2.Text;
                      SqlCommand cmdUpdate = new SqlCommand(qry1, con);
                      // cmdUpdate.Parameters.AddWithValue("@cl_id", txtClientId.Text);
                      //cmdUpdate.Parameters.AddWithValue("@cl_name", txtCl_Name.Text);
                      cmdUpdate.Parameters.AddWithValue("@cl_address", TextBox3.Text);
                      cmdUpdate.Parameters.AddWithValue("@cl_contPerson", TextBox4.Text);
                      //mdUpdate.Parameters.AddWithValue("@cl_ContNo", TextBox5.Text);
                      cmdUpdate.ExecuteNonQuery();

                      if ("Select Client" == dropName.SelectedItem.ToString())
                      {
                          lblAddContact.ForeColor = System.Drawing.Color.Red;
                          lblAddContact.Text = "Please select Client Name";
                      }
                      else
                      {
                          lblUpdateClient.Text = "Information is Updated..!";
                          btnUpdate.Visible = false;
                          txtCl_id2.Text = "";
                          TextBox3.Text = "";
                          TextBox4.Text = "";
                          this.Page_Load(sender, e);
                          btnUpdate.Visible = true;
                      }
              }
              catch (NullReferenceException ex)
              {
                  lblUpdateClient.ForeColor = System.Drawing.Color.Red;
                  lblUpdateClient.Text = "Sorry. Data could not be saved.";
              }
      }
      else
      {
          lblUpdateClient.Text = "Information is not Updated..!";
      }
  }
    
  protected void btnDelete_Click(object sender, EventArgs e)
  {
      if (Page.IsValid)
      {
          con.Open();
          string qry2 = "delete from rc_master where cl_id=" + txtCl_id2.Text;
          SqlCommand cmdDelete = new SqlCommand(qry2, con);
          cmdDelete.ExecuteNonQuery();
          lblUpdateClient.Text = "Information is Deleted..!";
          btnDelete.Visible = false;
          txtCl_id2.Text = "";
          TextBox3.Text = "";
          TextBox4.Text = "";
          this.Page_Load(sender, e);
          btnDelete.Visible = true;
      }
      else
      {
          lblUpdateClient.Text = "Information is not Deleted";
      }
  }
  protected void Btn_AddPerson_Click(object sender, EventArgs e)
  {
      if (Page.IsValid)
      {
          SqlCommand cmdAddPerson;
          cmdAddPerson = new SqlCommand("insert into Cl_Contact(Cl_Id,Contact_Person,Contact_No)values('" + txtCl_Id3.Text + "','" + txtContPers3.Text + "','" + txtContNo3.Text + "')", con);
          {
              try
              {
                  con.Open();             
                  
                      int rowAffected = cmdAddPerson.ExecuteNonQuery();
                      if ("Select Client" == Drop_NamePers.SelectedItem.ToString())
                      {
                          lblAddContact.ForeColor = System.Drawing.Color.Red;
                          lblAddContact.Text = "Please select Client Name";
                      }
                      else
                      {
                          if (rowAffected >= 0)
                          {
                              lblAddClient.ForeColor = System.Drawing.Color.Blue;
                              lblAddContact.Text = "Client Information is saved..!";
                              txtCl_Id3.Enabled = false;

                              con.Close();


                              Btn_AddPerson.Visible = false;
                              txtContPers3.Text = "";
                              txtContNo3.Text = "";
                              this.Page_Load(sender, e);
                              Btn_AddPerson.Visible = true;
                          }
                          else
                          {
                              lblAddContact.Text = "Contact Number is Already Exits";
                          }
                      }
              }
              catch (NullReferenceException ex)
              {
                  lblAddContact.ForeColor = System.Drawing.Color.Red;
                  lblAddContact.Text = "Sorry Information could not be saved.";
              }
              catch (SqlException ex)
              {
                  if (ex.Number == 2627)
                  {
                      lblAddContact.Text = "Mobile number is already exits..!";//Violation of primary key. Handle Exception
                  }
              }
             
          }
      }
      else {
          lblAddContact.Text = "Sorry Information could not be saved.";
      }
      }
  
  protected void Drop_NamePers_SelectedIndexChanged(object sender, EventArgs e)
  {
      SqlCommand cmddropPers;
      cmddropPers = new SqlCommand("select * from rc_master where cl_name= '" + Drop_NamePers.SelectedValue + "'", con);
      SqlDataReader readerdrop1 = null;
      con.Open();
      readerdrop1 = cmddropPers.ExecuteReader();
      if (readerdrop1.Read())
      {
          txtCl_Id3.Text = (readerdrop1[0].ToString());
          txtAddress3.Text = (readerdrop1[3].ToString());
        //  txtContPers3.Text = (readerdrop1[4].ToString());
         // txtContNo3.Text = (readerdrop1[5].ToString());

          con.Close();
      }
     
  }
  protected void btnCancel1_Click(object sender, EventArgs e)
  {
      if (Page.IsValid)
      {
          txtCl_Name.Text = "";
          txtAddress.Text = "";
          txtCont_Person.Text = "";
         //xtmobile.Text = "";
      }
      else
      {
          lblAddClient.Text = "";
      }
  }
  protected void btnCancel2_Click(object sender, EventArgs e)
  {
      if (Page.IsValid)
      {
          TextBox3.Text = "";
          TextBox4.Text = "";
         //extBox5.Text = "";
      }
      else
      {
          lblUpdateClient.Text = "";
      }
  }
  protected void btnCancel3_Click(object sender, EventArgs e)
  {
      if (Page.IsValid)
      {       
          txtAddress3.Text = "";
          txtContPers3.Text = "";
          txtContNo3.Text = "";
      }
      else
      {
          lblUpdateClient.Text = "";
      }
  }
  protected void Calendar1_SelectionChanged(object sender, EventArgs e)
  {
      txtCont_Person.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
  }
  protected void TextBox4_TextChanged(object sender, EventArgs e)
  {
    
  }
  protected void Calendar2_SelectionChanged(object sender, EventArgs e)
  {
      TextBox4.Text = Calendar2.SelectedDate.ToShortDateString();
      Calendar2.Visible = false;
  }
  
}

