using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Net;
using System.IO;
using System.Configuration;
using System.Data;

public partial class Problems_Solutions : System.Web.UI.Page
{
    string cs;
    SqlConnection con;
    String date;
    SqlCommand cmd,cmdCont;
    string a = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;user Id=rcinfotech;password=Rci@1234");
            con.Open();
            String cmd1 = "select cl_id,cl_name from rc_master";
            SqlDataAdapter adpt = new SqlDataAdapter(cmd1, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            Drop_NamePers.DataSource = dt;
            Drop_NamePers.DataBind();
            Drop_NamePers.DataTextField = "cl_name";
            //Drop_NamePers.DataValueField = "ID";
            Drop_NamePers.DataBind();
            
            //DropDownList1.DataSource = cmd.ExecuteReader();
            //DropDownList1.DataTextField = "cl_name";
            //DropDownList1.DataBind();
            //con.Close();
            txtDate.Text = DateTime.Now.Date.ToShortDateString();
            txtTime.Text = DateTime.Now.ToString("hh:mm:ss tt");
            Drop_NamePers.Items.Add(new ListItem("Select"));
            Drop_NamePers.SelectedIndex = Drop_NamePers.Items.IndexOf(Drop_NamePers.Items.FindByValue("Select"));
          }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtDate.Text = Calendar1.SelectedDate.ToShortDateString();
       
       // date = txtDate.Text;
        //DateTime dt = txtDate.Text;
        Calendar1.Visible = false;    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;    
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;user Id=rcinfotech;password=Rci@1234");

            cmd = new SqlCommand("insert into [rc_problem](cl_id,pr_date,prcl_name,prcl_contperson,prcl_no,recv_by,pr_stmt,Problem_Type,Pr_time) values('" + a + "','" + txtDate.Text + "','" + Drop_NamePers.SelectedItem + "','" + dropPerson.SelectedItem + "','" + txtContact.Text + "','" + txtRecvBy.Text + "','" + txtProblem.Text + "','" + DropPr_type.SelectedItem + "','" + txtTime.Text + "')", con);
            
      {
          try
          {
              con.Open();
              int rowAffected = cmd.ExecuteNonQuery();
              string Select = null;
              if ("Select" == dropPerson.SelectedItem.ToString() || "Select" == Drop_NamePers.SelectedItem.ToString())
              {
                  Label4.ForeColor = System.Drawing.Color.Red;
                  Label4.Text = "Please select Client and contact person";
              }
              if ("Select" == DropPr_type.SelectedItem.ToString())
              {
                  Label4.ForeColor = System.Drawing.Color.Red;
                  Label4.Text = "Please select Problem type";

              }
              else
              {
                  if (rowAffected > 0)
                  {
                      Label4.ForeColor = System.Drawing.Color.Blue;
                      Label4.Text = "Client Information is saved..!";
                      //txtClientId.Enabled = false;
                      //txtCl_Name.Enabled = false;
                      //txtAddress.Enabled = false;
                      //txtCont_Person.Enabled = false;
                      //txtmobile.Enabled = false;

                      txtRecvBy.Text = "";
                      txtContact.Text = "";
                      txtProblem.Text = "";
                      Drop_NamePers.Text = "Select";
                      dropPerson.Text = "Select";
                      DropPr_type.Text = "Select";
                     
                      this.Page_Load(sender, e);
                      con.Close();
                  }
              }
              
          }
          catch (NullReferenceException ex)
          {
              Label4.ForeColor = System.Drawing.Color.Red;
              Label4.Text = "Sorry. Data could not be saved.";
          }
      }
      }
      else{
          Label4.Text = "Sorry. Data could not be saved.";
      
        }
    }

   
    protected void Drop_NamePers_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmddrop;
        con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;user Id=rcinfotech;password=Rci@1234");
        con.Open();
        //Label4.Text = "id=" ;
        String cl_name = Drop_NamePers.SelectedItem.ToString();

        cmddrop = new SqlCommand("select cl_id from rc_master where cl_name= '" + cl_name + "'", con);
        SqlDataReader readerdrop = null;    
        readerdrop = cmddrop.ExecuteReader();
        if (readerdrop.Read())
        {
            a = (readerdrop[0].ToString());
          
            //con.Close();
        }
        con.Close();
        con.Open();
       
        String b = "select Contact_Person,Contact_No from Cl_Contact where cl_id= '" + a + "'";
        SqlDataAdapter adpt1 = new SqlDataAdapter(b, con);
        DataTable dt1 = new DataTable();
        adpt1.Fill(dt1);
        dropPerson.DataSource = dt1;
        dropPerson.DataBind();
        dropPerson.DataTextField = "Contact_Person";
      
        //txtContact.Text = dt1.Tables[0].Rows[0][0].ToString();
        //Drop_NamePers.DataValueField = "ID";
        dropPerson.DataBind(); 
        con.Close();
        
        dropPerson.Items.Add(new ListItem("Select"));
        dropPerson.SelectedIndex = dropPerson.Items.IndexOf(dropPerson.Items.FindByValue("Select"));
    }
    protected void dropPerson_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        SqlCommand  cmdContact;
        con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;user Id=rcinfotech;password=Rci@1234");
        con.Open();
        SqlDataReader readerdrop1 = null;
        string m = null;
        cmdContact = new SqlCommand("select Contact_Person,Contact_No from Cl_Contact where Contact_Person= '" + dropPerson.SelectedValue + " '", con);
        readerdrop1 = cmdContact.ExecuteReader();
        if (readerdrop1.Read())
        {
             txtContact.Text = (readerdrop1[1].ToString());
            //con.Close();
        }
       
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtRecvBy.Text = "";
        txtContact.Text = "";
        txtProblem.Text = "";
        dropPerson.Text = "Select";
        Drop_NamePers.Text = "Select";
    }
}