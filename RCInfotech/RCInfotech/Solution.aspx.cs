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

public partial class Solution : System.Web.UI.Page
{
    string a = null;
    SqlConnection con;
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
            drop_ClName.DataSource = dt;
            drop_ClName.DataBind();
            drop_ClName.DataTextField = "cl_name";
            drop_ClName.DataBind();
            txtSlDate.Text = DateTime.Now.Date.ToShortDateString();
            txtSlTime.Text = DateTime.Now.ToString("hh:mm:ss tt");

            drop_ClName.Items.Add(new ListItem("Select"));
            drop_ClName.SelectedIndex = drop_ClName.Items.IndexOf(drop_ClName.Items.FindByValue("Select"));

           
            //DropDownList1.DataSource = cmd.ExecuteReader();
            //DropDownList1.DataTextField = "cl_name";
            //DropDownList1.DataBind();
            //con.Close();
        }
    }
    protected void drop_ClName_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmddrop;
        con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;user Id=rcinfotech;password=Rci@1234");
        con.Open();
        
        String cl_name = drop_ClName.SelectedItem.ToString();
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
        drop_ClPerson.DataSource = dt1;
        drop_ClPerson.DataBind();
        drop_ClPerson.DataTextField = "Contact_Person";
        //txtContact.Text = dt1.Tables[0].Rows[0][0].ToString();
        //Drop_NamePers.DataValueField = "ID";
        drop_ClPerson.DataBind();
        con.Close();
        drop_ClPerson.Items.Add(new ListItem("Select"));
        drop_ClPerson.SelectedIndex = drop_ClPerson.Items.IndexOf(drop_ClPerson.Items.FindByValue("Select"));
    }
    protected void drop_ClPerson_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmdContact,cmdData;
        con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;user Id=rcinfotech;password=Rci@1234");
        con.Open();
        SqlDataReader readerdrop1 = null;
        string m = null;
        cmdContact = new SqlCommand("select Cl_Id,Contact_Person,Contact_No from Cl_Contact where Contact_Person= '" + drop_ClPerson.SelectedValue + " '", con);
        readerdrop1 = cmdContact.ExecuteReader();
        if (readerdrop1.Read())
        {
            txtPrCl_Id.Text = (readerdrop1[0].ToString());
            txtClCont.Text = (readerdrop1[2].ToString());
            con.Close();
        }
       
        SqlDataReader readerdrop2 = null;
        cmdData = new SqlCommand("select * from rc_problem where prcl_contperson='" + drop_ClPerson.SelectedValue + "'", con);
        con.Open();
        readerdrop2 = cmdData.ExecuteReader();
        if (readerdrop2.Read())
        { 
        txtPrDate.Text=(readerdrop2[2].ToString());
        TextBox1.Text=(readerdrop2[6].ToString());
        txtProblem.Text = (readerdrop2[7].ToString());
        txtPr_Type.Text=(readerdrop2[12].ToString());
        txtPrTime.Text = (readerdrop2[13].ToString());
        con.Close();
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        if (Page.IsValid)
        {
            con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;user Id=rcinfotech;password=Rci@1234");
            con.Open();
            string qry1 = "UPDATE rc_problem SET Cl_Id=@Cl_Id,solution=@solution,solved_by=@solved_by,sl_date=@sl_date,status=@status,Sl_Time=@Sl_Time where cl_id='" + a + "'";
            SqlCommand cmdUpdate = new SqlCommand(qry1, con);
            cmdUpdate.Parameters.AddWithValue("@Cl_Id", txtPrCl_Id.Text);
            cmdUpdate.Parameters.AddWithValue("@solution", txtSolution.Text);
            cmdUpdate.Parameters.AddWithValue("@solved_by", txtSolvedBy.Text);
            cmdUpdate.Parameters.AddWithValue("@status", Drop_status.Text);
            cmdUpdate.Parameters.AddWithValue("@Sl_Time", txtSlTime.Text);
            cmdUpdate.Parameters.AddWithValue("@sl_date", txtSlDate.Text);
            cmdUpdate.ExecuteNonQuery();
            if ("Select" == drop_ClName.SelectedItem.ToString() || "Select" == drop_ClPerson.SelectedItem.ToString())
            {
                Label3.ForeColor = System.Drawing.Color.Red;
                Label3.Text = "Please select Client Name";
            }
            else
            {
                Label3.Text = "Information is Updated..!";
                this.Page_Load(sender, e);
                txtPrCl_Id.Text="";
                    txtClCont.Text="";
                    txtPrTime.Text="";
                        txtPrDate.Text="";
                        txtPr_Type.Text="";
                            txtProblem.Text="";
                            TextBox1.Text="";
                                txtSolution.Text="";
                                txtSolvedBy.Text="";
                                    txtSlTime.Text="";
                                    txtSlDate.Text = "";
                //btnUpdate.Visible = false;
                //txtCl_id2.Text = "";
                //TextBox3.Text = "";
                //TextBox4.Text = "";
                //this.Page_Load(sender, e);
                //btnUpdate.Visible = true;
            }                 
        }
        else
        {
            Label3.Text = "Information isNot Saved";
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtSlDate.Text = Calendar1.SelectedDate.ToString();
        Calendar1.Visible = false;
    }
}