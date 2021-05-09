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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Label1.Text = "hello!";
            String connectionString = ConfigurationManager.ConnectionStrings["FutureDevs"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO RegUsers VALUES (@FName,@LName,@Gender,@Email,@Username,@Password,@PNumber)", conn);
            cmd.Parameters.AddWithValue("@FName", txtFName.Text);
            cmd.Parameters.AddWithValue("@LName", txtLName.Text);
            cmd.Parameters.AddWithValue("@Gender", rbGender.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            cmd.Parameters.AddWithValue("@PNumber", txtPhone.Text);
            cmd.ExecuteNonQuery();
            //if (k != 0)
            //{
            //    Label1.Text = "Record Inseted!";
            //}
            conn.Close();
            Response.Redirect("Login.aspx");
        }
    }
}