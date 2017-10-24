using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace pracLab1
{
    public partial class QueryForm : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ShowDataBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string query;
                query = "select StudentTable.Name, InstructorTable.Salary from StudentTable inner join InstructorTable on InstructorTable.Salary>'" + MinTxtBox.Text + "' and InstructorTable.Salary<'" + MaxTxtBox.Text + "'";
                conn.Open();
                SqlDataAdapter sda = new SqlDataAdapter(query, conn);
                DataTable data = new DataTable();
                sda.Fill(data);
                SelectedGridView.DataSource = data;
                SelectedGridView.DataBind();
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void QueryBtn_Click(object sender, EventArgs e)
        {
            string query = QueryTxtBox.Text;

            try
            {
                conn.Open();
                SqlDataAdapter sda = new SqlDataAdapter(query, conn);
                DataTable data = new DataTable();
                sda.Fill(data);
                SelectedGridView.DataSource = data;
                SelectedGridView.DataBind();
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}
