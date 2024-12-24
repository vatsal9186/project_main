using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace newProject
{
    public partial class index2 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["abc"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                String userId = Session["userid"] as String;

                string q;
                cn.Open();
                int amount = Convert.ToInt32(Label2.Text);
                int quantity = Convert.ToInt32(TextBox1.Text);
                int a = amount * quantity;
                q = "insert into CART (item,quantity,amount,userid) values ('" + Label1.Text + "','" + TextBox1.Text + "','" + a + "','" + userId + "')";
                SqlCommand cmd = new SqlCommand(q, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
            //Response.Redirect("cart.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                String userId = Session["userid"] as String;

                string q;
                cn.Open();
                int amount = Convert.ToInt32(Label5.Text);
                int quantity = Convert.ToInt32(TextBox2.Text);
                int a = amount * quantity;
                q = "insert into CART (item,quantity,amount,userid) values ('" + Label4.Text + "','" + TextBox2.Text + "','" + a + "','" + userId + "')";
                SqlCommand cmd = new SqlCommand(q, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
            //Response.Redirect("cart.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                String userId = Session["userid"] as String;

                string q;
                cn.Open();
                int amount = Convert.ToInt32(Label8.Text);
                int quantity = Convert.ToInt32(TextBox3.Text);
                int a = amount * quantity;
                q = "insert into CART (item,quantity,amount,userid) values ('" + Label7.Text + "','" + TextBox3.Text + "','" + a + "','" + userId + "')";
                SqlCommand cmd = new SqlCommand(q, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
            //Response.Redirect("cart.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                string p;
                string q;
                cn.Open();
                int amount = Convert.ToInt32(Label2.Text);
                int quantity = Convert.ToInt32(TextBox1.Text);
                int a = amount * quantity;
                q = "insert into f_admin (name,quantity,amount) values ('" + Label1.Text + "','" + TextBox1.Text + "','" + a + "')";
                p = "insert into checkout (item,quantity,amount) values ('" + Label1.Text + "','" + TextBox1.Text + "','" + a + "')";
                SqlCommand c = new SqlCommand(p, cn);
                SqlCommand cmd = new SqlCommand(q, cn);
                c.ExecuteNonQuery();
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            else
            {
                Response.Redirect("Buynow.aspx");
            }
            //Response.Redirect("cart.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                string p;
                string q;
                cn.Open();
                int amount = Convert.ToInt32(Label5.Text);
                int quantity = Convert.ToInt32(TextBox2.Text);
                int a = amount * quantity;
                q = "insert into f_admin (name,quantity,amount) values ('" + Label4.Text + "','" + TextBox2.Text + "','" + a + "')";
                p = "insert into checkout (item,quantity,amount) values ('" + Label4.Text + "','" + TextBox2.Text + "','" + a + "')";
                SqlCommand c = new SqlCommand(p, cn);
                SqlCommand cmd = new SqlCommand(q, cn);
                c.ExecuteNonQuery();
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            else
            {
                Response.Redirect("Buynow.aspx");
            }
            //Response.Redirect("Buynow.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                string p;
                string q;
                cn.Open();
                int amount = Convert.ToInt32(Label8.Text);
                int quantity = Convert.ToInt32(TextBox3.Text);
                int a = amount * quantity;
                q = "insert into f_admin (name,quantity,amount) values ('" + Label7.Text + "','" + TextBox3.Text + "','" + a + "')";
                p = "insert into checkout (item,quantity,amount) values ('" + Label7.Text + "','" + TextBox3.Text + "','" + a + "')";
                SqlCommand c = new SqlCommand(p, cn);
                SqlCommand cmd = new SqlCommand(q, cn);
                c.ExecuteNonQuery();
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            else
            {
                Response.Redirect("Buynow.aspx");
            }
            //Response.Redirect("Buynow.aspx");
        }
    }
}