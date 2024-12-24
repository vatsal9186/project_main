using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace newProject
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string q;
            cn.Open();
            q = "select * from userregi where username='" + TextBox1.Text + "'";

            SqlCommand cmd = new SqlCommand(q, cn);
            SqlDataReader read = cmd.ExecuteReader();
            if (read.Read())
            {
                Session["userid"] = read["id"].ToString();
                TextBox1.Text = Session["userid"].ToString();

                Response.Redirect("index.aspx");
            }
            else
            {
                TextBox1.Text = "no user found";
            //Response.Redirect("Registration.aspx");
            }
            cn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}
