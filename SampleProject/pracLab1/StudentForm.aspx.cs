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
    public partial class StudentForm : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RollTxtBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InsertStudBtn_Click(object sender, EventArgs e)
        {
            
            try
            {
                conn.Open();
                string query = "insert into StudentTable (Roll, Name, DateOfBirth) values('" + RollTxtBox.Text + "','" + NameTxtBox.Text + "','" + BirthTxtBox.Text + "')";
                SqlDataAdapter sda = new SqlDataAdapter(query, conn);
                sda.SelectCommand.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("~/StudentForm.aspx");
            }
            catch (Exception ex)
            {
                Response.Write(ex);
                conn.Close();
            }
        }
    }
}