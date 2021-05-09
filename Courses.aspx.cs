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
    public partial class WebForm1 : System.Web.UI.Page
    {
        String connectionString = ConfigurationManager.ConnectionStrings["FutureDevs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["username"] == null)
            {
                hello.Text = "Undefined";
            }
            else
            {
                String userName = Request.Cookies["username"].Value;
                hello.Text = "Hello "+userName;
            }

            SqlConnection con = new SqlConnection(connectionString);
            SqlDataAdapter da = new SqlDataAdapter("select * from Courses", con);

            DataSet ds = new DataSet();

            da.Fill(ds);
            rptCourses.DataSource = ds;
            rptCourses.DataBind();
        }

        protected void forgPass_Click(object sender, EventArgs e)
        {
            String userName = hello.Text;
            Response.Cookies["username"].Value = userName;
            Response.Redirect("ResetPass.aspx");
        }
    }
}