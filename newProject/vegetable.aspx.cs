using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace newProject
{
    public partial class vegetable : System.Web.UI.Page
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
                int amount = Convert.ToInt32(Label10.Text);
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


           

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                String userId = Session["userid"] as String;

                string q;
                cn.Open();
                int amount = Convert.ToInt32(Label12.Text);
                int quantity = Convert.ToInt32(TextBox2.Text);
                int a = amount * quantity;
                q = "insert into CART (item,quantity,amount,userid) values ('" + Label2.Text + "','" + TextBox2.Text + "','" + a + "','" + userId + "')";
                SqlCommand cmd = new SqlCommand(q, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                String userId = Session["userid"] as String;

                string q;
                cn.Open();
                int amount = Convert.ToInt32(Label14.Text);
                int quantity = Convert.ToInt32(TextBox3.Text);
                int a = amount * quantity;
                q = "insert into CART (item,quantity,amount,userid) values ('" + Label3.Text + "','" + TextBox3.Text + "','" + a + "','" + userId + "')";
                SqlCommand cmd = new SqlCommand(q, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                String userId = Session["userid"] as String;

                string q;
                cn.Open();
                int amount = Convert.ToInt32(Label16.Text);
                int quantity = Convert.ToInt32(TextBox4.Text);
                int a = amount * quantity;
                q = "insert into CART (item,quantity,amount,userid) values ('" + Label4.Text + "','" + TextBox4.Text + "','" + a + "','" + userId + "')";
                SqlCommand cmd = new SqlCommand(q, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
           
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                String userId = Session["userid"] as String;

                string q;
                cn.Open();
                int amount = Convert.ToInt32(Label18.Text);
                int quantity = Convert.ToInt32(TextBox5.Text);
                int a = amount * quantity;
                q = "insert into CART (item,quantity,amount,userid) values ('" + Label5.Text + "','" + TextBox5.Text + "','" + a + "','" + userId + "')";
                SqlCommand cmd = new SqlCommand(q, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
            
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                String userId = Session["userid"] as String;

                string q;
                cn.Open();
                int amount = Convert.ToInt32(Label20.Text);
                int quantity = Convert.ToInt32(TextBox6.Text);
                int a = amount * quantity;
                q = "insert into CART (item,quantity,amount,userid) values ('" + Label6.Text + "','" + TextBox6.Text + "','" + a + "','" + userId + "')";
                SqlCommand cmd = new SqlCommand(q, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
           
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                String userId = Session["userid"] as String;

                string q;
                cn.Open();
                int amount = Convert.ToInt32(Label22.Text);
                int quantity = Convert.ToInt32(TextBox7.Text);
                int a = amount * quantity;
                q = "insert into CART (item,quantity,amount,userid) values ('" + Label7.Text + "','" + TextBox7.Text + "','" + a + "','" + userId + "')";
                SqlCommand cmd = new SqlCommand(q, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
           
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                String userId = Session["userid"] as String;

                string q;
                cn.Open();
                int amount = Convert.ToInt32(Label24.Text);
                int quantity = Convert.ToInt32(TextBox8.Text);
                int a = amount * quantity;
                q = "insert into CART (item,quantity,amount,userid) values ('" + Label8.Text + "','" + TextBox8.Text + "','" + a + "','" + userId + "')";
                SqlCommand cmd = new SqlCommand(q, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
           
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                String userId = Session["userid"] as String;

                string q;
                cn.Open();
                int amount = Convert.ToInt32(Label26.Text);
                int quantity = Convert.ToInt32(TextBox9.Text);
                int a = amount * quantity;
                q = "insert into CART (item,quantity,amount,userid) values ('" + Label9.Text + "','" + TextBox9.Text + "','" + a + "','" + userId + "')";
                SqlCommand cmd = new SqlCommand(q, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
           
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                string q;
                string p;
                cn.Open();
                int amount = Convert.ToInt32(Label10.Text);
                int quantity = Convert.ToInt32(TextBox1.Text);
                int a = amount * quantity;
                q = "insert into v_admin  (name,quantity,amount) values ('" + Label1.Text + "','" + TextBox1.Text + "','" + a + "')";
                p = "insert into checkout (item,quantity,amount) values ('" + Label1.Text + "','" + TextBox1.Text + "','" + a + "')";
                SqlCommand cmd = new SqlCommand(q, cn);
                SqlCommand c=new SqlCommand(p, cn);
                c.ExecuteNonQuery();
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            else
            {
                Response.Redirect("Buynow.aspx");
            }

           
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                string p;
                string q;
                cn.Open();
                int amount = Convert.ToInt32(Label16.Text);
                int quantity = Convert.ToInt32(TextBox4.Text);
                int a = amount * quantity;
                q = "insert into v_admin (name,quantity,amount) values ('" + Label4.Text + "','" + TextBox4.Text + "','" + a + "')";
                p = "insert into checkout (item,quantity,amount) values ('" + Label4.Text + "','" + TextBox4.Text + "','" + a + "')";
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

        protected void Button11_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                string p;
                string q;
                cn.Open();
                int amount = Convert.ToInt32(Label12.Text);
                int quantity = Convert.ToInt32(TextBox2.Text);
                int a = amount * quantity;
                q = "insert into v_admin (name,quantity,amount) values ('" + Label2.Text + "','" + TextBox2.Text + "','" + a + "')";
                p = "insert into checkout (item,quantity,amount) values ('" + Label2.Text + "','" + TextBox2.Text + "','" + a + "')";
                SqlCommand cmd = new SqlCommand(q, cn);
                SqlCommand c = new SqlCommand(p, cn);
                c.ExecuteNonQuery();
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            else
            {
                Response.Redirect("Buynow.aspx");
            }
            //Response.Redirect("cart.aspx");
            //Response.Redirect("Buynow.aspx");
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                string p;
                string q;
                cn.Open();
                int amount = Convert.ToInt32(Label14.Text);
                int quantity = Convert.ToInt32(TextBox3.Text);
                int a = amount * quantity;
                q = "insert into v_admin (name,quantity,amount) values ('" + Label3.Text + "','" + TextBox3.Text + "','" + a + "')";
                p = "insert into checkout (item,quantity,amount) values ('" + Label3.Text + "','" + TextBox3.Text + "','" + a + "')";
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

        protected void Button14_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                string p;
                string q;
                cn.Open();
                int amount = Convert.ToInt32(Label18.Text);
                int quantity = Convert.ToInt32(TextBox5.Text);
                int a = amount * quantity;
                q = "insert into v_admin (name,quantity,amount) values ('" + Label5.Text + "','" + TextBox5.Text + "','" + a + "')";
                p = "insert into checkout (item,quantity,amount) values ('" + Label5.Text + "','" + TextBox5.Text + "','" + a + "')";
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

        protected void Button15_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                string p;
                string q;
                cn.Open();
                int amount = Convert.ToInt32(Label20.Text);
                int quantity = Convert.ToInt32(TextBox6.Text);
                int a = amount * quantity;
                q = "insert into v_admin (name,quantity,amount) values ('" + Label6.Text + "','" + TextBox6.Text + "','" + a + "')";
                p = "insert into checkout (item,quantity,amount) values ('" + Label6.Text + "','" + TextBox6.Text + "','" + a + "')";
                SqlCommand cmd = new SqlCommand(q, cn);
                SqlCommand c = new SqlCommand(p, cn);
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

        protected void Button16_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                string p;
                string q;
                cn.Open();
                int amount = Convert.ToInt32(Label22.Text);
                int quantity = Convert.ToInt32(TextBox7.Text);
                int a = amount * quantity;
                q = "insert into v_admin (name,quantity,amount) values ('" + Label7.Text + "','" + TextBox7.Text + "','" + a + "')";
                p = "insert into checkout (item,quantity,amount) values ('" + Label7.Text + "','" + TextBox7.Text + "','" + a + "')";
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

        protected void Button17_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                string p;
                string q;
                cn.Open();
                int amount = Convert.ToInt32(Label24.Text);
                int quantity = Convert.ToInt32(TextBox8.Text);
                int a = amount * quantity;
                q = "insert into v_admin (name,quantity,amount) values ('" + Label8.Text + "','" + TextBox8.Text + "','" + a + "')";
                p = "insert into checkout (item,quantity,amount) values ('" + Label8.Text + "','" + TextBox8.Text + "','" + a + "')";
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

        protected void Button18_Click(object sender, EventArgs e)
        {

            if (Session["userid"] != null)
            {
                string p;
                string q;
                cn.Open();
                int amount = Convert.ToInt32(Label26.Text);
                int quantity = Convert.ToInt32(TextBox9.Text);
                int a = amount * quantity;
                q = "insert into v_admin (name,quantity,amount) values ('" + Label9.Text + "','" + TextBox9.Text + "','" + a + "')";
                p = "insert into checkout (item,quantity,amount) values ('" + Label9.Text + "','" + TextBox9.Text + "','" + a + "')";
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
