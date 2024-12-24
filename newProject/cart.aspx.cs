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
    public partial class cart : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["abc"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {


            cn.Open();
            String userId = Session["userid"] as String;

            SqlCommand sql = new SqlCommand("SELECT SUM(amount) FROM CART WHERE userid = '" + userId + "'", cn);
            SqlDataReader reader = sql.ExecuteReader();
            int totalAmount = 0;

            if (reader.Read())
            {
                totalAmount = reader.IsDBNull(0) ? 0 : reader.GetInt32(0);
            }
            Session["amount"] = totalAmount.ToString();
            Label1.Text = totalAmount.ToString();
            reader.Close();
            cn.Close();
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}