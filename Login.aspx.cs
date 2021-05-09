using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineCoursePlatform
{
    public partial class Login : System.Web.UI.Page
    {
        String connectionString = ConfigurationManager.ConnectionStrings["FutureDevs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string uid = txtUsername.Text;
            string pass = txtPassword.Text;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string qry = "select * from RegUsers where Username='" + uid + "' and Password='" + pass + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                lblStatus.Text = "Login Sucess......!!";
                Response.Cookies["username"].Value= sdr.GetValue(4).ToString();
                Response.Redirect("Courses.aspx");
            }
            else
            {
                lblStatus.Text = "Incorrect Creddebtials!";

            }
            con.Close();
        }
    }
}