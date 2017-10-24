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
    public partial class InstructorForm : System.Web.UI.Page
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
                string query = "insert into InstructorTable (I_Id, Name, Salary) values('" + I_IdTxtBox.Text + "','" + NameTxtBox.Text + "','" + SalaryTxtBox.Text + "')";
                SqlDataAdapter sda = new SqlDataAdapter(query, conn);
                sda.SelectCommand.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("~/InstructorForm.aspx");
            }
            catch (Exception ex)
            {
                Response.Write(ex);
                conn.Close();
            }
            
        }
    }
}