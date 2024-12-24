using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace newProject
{
    public partial class Buynow : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string q;
            cn.Open();
            q = "insert into ORDER_INFO (name,mobile_num,email,address) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
            SqlCommand cmd = new SqlCommand(q, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string q;
            cn.Open();
            q = "insert into feedback values ('" + TextBox5.Text + "')";
            SqlCommand cmd = new SqlCommand(q, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }
    }
}