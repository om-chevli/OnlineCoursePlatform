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
    public partial class AllCourses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String connectionString = ConfigurationManager.ConnectionStrings["FutureDevs"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            SqlDataAdapter da = new SqlDataAdapter("select * from Courses", con);

            DataSet ds = new DataSet();

            da.Fill(ds);
            rptCourses.DataSource = ds;
            rptCourses.DataBind();
        }
    }
}