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


public partial class Customer_Master : System.Web.UI.Page
{
    string cs;
    SqlConnection con;
    SqlCommand cmd;
   
    int cl_id = 1;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;user Id=rcinfotech;password=Rci@1234");


        Label1.Text = "CONNECTION DONE";

        
        //  string qry = "SELECT coalesce(max(cl_id),0) FROM [rc_master] WHERE cl_date='" + @today + "'";
        string qry = "SELECT max(cl_id)+1 FROM [rc_master]";
        // con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;user Id=rcinfotech;password=Rci@1234");
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataReader reader = null;


        con.Open();
        reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            int i;
            i = Convert.ToInt32(reader[0].ToString());
            i++;
            txtClientId.Text = i.ToString();


            // txtClientId.Text = reader.GetValue(0).ToString();
        }
        else
        {
            int i = 0;
            i++;
            txtClientId.Text = i.ToString();

        }
        reader.Close();

        SqlDataReader dr = cmd.ExecuteReader();
        if (!dr.Read())
        {
            cl_id = cl_id + Convert.ToInt32(dr[0]);
        }
        else
        {
            cl_id = cl_id + Convert.ToInt32(dr[0]);
        }
        con.Close();
        dr.Close();



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
//    Tab3.CssClass = "Initial";
    MainView.ActiveViewIndex = 0;
  }

  

  //protected void Tab3_Click(object sender, EventArgs e)
  //{
  //    Tab1.CssClass = "Initial";
  //    Tab2.CssClass = "Initial";
  //    //Tab3.CssClass = "Clicked";
  //    MainView.ActiveViewIndex = 2;
  //}
  protected void btnAdd_Click(object sender, EventArgs e)
  {
      var today = DateTime.Today;
      //con.Close();
      cmd = new SqlCommand("insert into rc_master(cl_id,cl_date,cl_name,cl_address,cl_contPerson,cl_ContNo) values('" + cl_id + "','" + @today + "','" + txtCl_Name.Text + "','" + txtAddress.Text + "','" + txtCont_Person.Text + "','" + txtmobile.Text + "')", con);
      {
          try
          {
              con.Open();

              int rowAffected = cmd.ExecuteNonQuery();
              if (rowAffected > 0)
              {
                  Label1.ForeColor = System.Drawing.Color.Blue;
                  Label1.Text = "Client Information is saved..!";
                  txtClientId.Enabled = false;
                  txtCl_Name.Enabled = false;
                  txtAddress.Enabled = false;
                  txtCont_Person.Enabled = false;
                  txtmobile.Enabled = false;
                  con.Close();
              }
          }
          catch (NullReferenceException ex)
          {
              //Label1.Text =ex.ToString();
              Label1.ForeColor = System.Drawing.Color.Red;
              Label1.Text = "Sorry. Data could not be saved.";

          }
      }
     
  }
  protected void btnCancel_Click(object sender, EventArgs e)
  {

      

  }
  protected void Tab2_Click1(object sender, EventArgs e)
  {
      con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;user Id=rcinfotech;password=Rci@1234");

      cmd = new SqlCommand("select cl_id,cl_name from rc_master", con);
      con.Open();
      dropName.DataSource = cmd.ExecuteReader();
      dropName.DataTextField = "cl_name";
      dropName.DataValueField = "cl_id";
      dropName.DataBind();
      con.Close();
      cmd = new SqlCommand("select cl_id,cl_name from rc_master", con);
      con.Open();
      dropCl_id2.DataSource = cmd.ExecuteReader();
      dropCl_id2.DataTextField = "cl_id";
      dropCl_id2.DataValueField = "cl_name";
      dropCl_id2.DataBind();
      con.Close();
      Tab2.CssClass = "Clicked";
      Tab1.CssClass = "Initial";
      
      // Tab3.CssClass = "Initial";
      MainView.ActiveViewIndex = 1;
  }
}