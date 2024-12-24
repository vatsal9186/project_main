using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace newProject
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["abc"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string q;
            cn.Open();
            q = "insert into userregi (username,mobile_num,email,password) values ('" + TextBox1.Text+"','"+ TextBox2.Text + "','"+TextBox3.Text+"','"+TextBox4.Text+"')";
            SqlCommand cmd = new SqlCommand(q, cn);
            cmd.ExecuteNonQuery();
            Response.Redirect("index.aspx");
            cn.Close();
            TextBox1.Text = "";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            TextBox4.Text = " ";
            //Response.Redirect("cart.aspx");
        }
    }
}
