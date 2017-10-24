using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace pracLab1
{
    public partial class SuperviseForm : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void InsertBtn_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                string query = "insert into SuperviseTable (Roll, I_Id, Year) values('" + StudRollTxtBox.Text + "','" + InsI_IdTxtBox.Text + "','" + YearTxtBox.Text + "')";
                SqlDataAdapter sda = new SqlDataAdapter(query, conn);
                sda.SelectCommand.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("~/SuperviseForm.aspx");
            }
            catch (Exception ex)
            {
                Response.Write(ex);
                conn.Close();
            }
        }
    }
}