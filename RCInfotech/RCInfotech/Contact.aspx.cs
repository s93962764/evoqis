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

public partial class Contact : System.Web.UI.Page
{
    string cs;
    SqlConnection con;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        cs = " Data Source=162.222.225.88;Initial Catalog=rcipune2017;user Id=rcinfotech;password=Rci@1234";



        con = new SqlConnection(cs);
    }

    public void send()
        {
            var today = DateTime.Today;
           
            string name = txtname.Text;
            string mono = txtmobile.Text;
            string sub = txtsubject.Text;
            string no = "919021648717";
            string gs_senderid = "RCINFO";
            string message = "Hello Sir,\nI am " + txtname.Text + ".My contact number is " + txtmobile.Text + ".I want to know " + txtsubject.Text + ".\nThank You.";
            string sURL = "http://smsapi.24x7sms.com/api_1.0/SendSMS.aspx?EmailID=rcinfotech.pune@gmail.com&Password=1994&MobileNo=" + no + "&SenderID=" + gs_senderid + "&Message=" + message + "&ServiceName=PROMOTIONAL_HIGH";
            WebRequest wrGETURL;
            StreamReader objReader;
            wrGETURL = WebRequest.Create(sURL);
            try
            {
                Stream objStream;
                objStream = wrGETURL.GetResponse().GetResponseStream();
                objReader = new StreamReader(objStream);
                objReader.Close();
                Label1.Text = "Message sent";
            }
            catch (Exception ex)
            {
                Label1.Text = "Message not sent";
            }

           
        }
        private void txtmobile_TextChanged(object sender, EventArgs e)
        {
            if (System.Text.RegularExpressions.Regex.IsMatch(txtmobile.Text, "[^0-9]"))
            {
                //MessageBox.Show("Please enter only numbers.");
                txtmobile.Text = txtmobile.Text.Remove(txtmobile.Text.Length - 1);
            }
            if (txtmobile.Text.Length <= 9)
            {
                // errorProvider1.SetError(txtNumber, "Contact Number must be atleast 10 digit");
                Button1.Enabled = false;
            }
            //else
            //{
            //    errorProvider1.SetError(txtNumber, "");
            //    btnContOk.Enabled = true;
            //}
        }

        protected void Button1_click(object sender, EventArgs e)
        {
            var today = DateTime.Today;
            int sr_no = 1;
            string qry = "SELECT coalesce(max(sr_no),0) FROM [v_contact] WHERE v_date='" + @today + "'";

            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (!dr.Read())
            {
                sr_no = sr_no + Convert.ToInt32(dr[0]);
            }
            else
            {
                sr_no = sr_no + Convert.ToInt32(dr[0]);
            }
            con.Close();
            dr.Close();
            cmd = new SqlCommand("insert into V_CONTACT(SR_NO,V_DATE,V_NAME,V_EMAIL,V_PHONE,V_MOBILE,V_SUB,V_MSG) values('" + sr_no + "','" + @today + "','" + txtname.Text + "','" + txtemail.Text + "','" + txtmobile.Text + "','" + txtcontact.Text + "','" + txtsubject.Text + "','" + txtcomment.Text + "')", con);

            if (Page.IsValid)
            {
                try 
                {
                    con.Open();

                    int rowAffected = cmd.ExecuteNonQuery();
                    if (rowAffected > 0)
                    {
                        Label1.ForeColor = System.Drawing.Color.Blue;
                        Label1.Text = "Thank you for contacting us.";
                        txtname.Enabled = false;
                        txtcontact.Enabled = false;
                        txtmobile.Enabled = false;
                        txtemail.Enabled = false;
                        txtsubject.Enabled = false;
                        txtcomment.Enabled = false;
                        Button1.Enabled = false;

                        //Mail Sending

                        MailMessage mailmsg = new MailMessage();
                        mailmsg.From = new MailAddress("demosmtp2@gmail.com");
                        mailmsg.To.Add("info@rcipune.in");
                        mailmsg.Subject = txtsubject.Text;

                        mailmsg.Body = "<b>Sender Name : </b>" + txtname.Text + "<br/>"
                                       + "<b>Sender Email : </b>" + txtemail.Text + "<br/>"
                                     + "<b>Phone Number : </b>" + txtcontact.Text + "<br/>"
                                       + "<b>Mobile Number : </b>" + txtmobile.Text + "<br/>"
                                      + "<b>Comments : </b>" + txtcomment.Text;
                        mailmsg.IsBodyHtml = true;

                        SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                        smtp.EnableSsl = true;
                        smtp.Credentials = new System.Net.NetworkCredential("demosmtp2@gmail.com", "Pwdidtgfu");
                        smtp.Send(mailmsg);
                        con.Close();
                        send();                  
                    }
                }
                catch (Exception ex)
                {
                    //Label1.Text =ex.ToString();
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "Sorry. Data could not be saved.";
                }
            }
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            txtname.Text = "";
            txtcontact.Text = "";
            txtmobile.Text = "";
            txtemail.Text = "";
            txtsubject.Text = "";
            txtcomment.Text = "";
        }
        private void txtcontact_TextChanged(object sender, EventArgs e)
        {
            if (System.Text.RegularExpressions.Regex.IsMatch(txtcontact.Text, "[^0-9]"))
            {
                //MessageBox.Show("Please enter only numbers.");
               
                txtcontact.Text = txtcontact.Text.Remove(txtcontact.Text.Length - 1);
            }
            if (txtcontact.Text.Length <= 9)
            {
                // errorProvider1.SetError(txtNumber, "Contact Number must be atleast 10 digit");
                Button1.Enabled = false;
            }
            else
            {
                txtcontact.Text = "";
                Button1.Enabled = true;
            }
        }

    }
