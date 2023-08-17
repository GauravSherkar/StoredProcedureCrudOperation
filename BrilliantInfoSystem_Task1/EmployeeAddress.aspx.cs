
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BrilliantInfoSystem_Task1
{
    public partial class EmployeeAddress : System.Web.UI.Page
    {

     
        protected void Page_Load(object sender, EventArgs e)
        {
             DisplayEmployeeAddress();            
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
           
         string ConnectionString = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
            SqlConnection con = null;
            try
            {
                using (con = new SqlConnection(ConnectionString))
                {                   
                    SqlCommand cmd = new SqlCommand("sp_Insert", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@FirstName", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@LastName", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@Salary", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@Designation", TextBox5.Text);                   
                    cmd.Parameters.AddWithValue("@State", TextBox6.Text);                   
                    cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedValue);                   
                    con.Open();
                    
                    int a = cmd.ExecuteNonQuery();
                    if (a > 0)
                    {
                        Response.Write("<script>alert('Query Exicuted Successfully')</script>");                       
                    //Response.Redirect("EmployeeAddress.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Query Not Exicuted')</script>");
                    }
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    DropDownList1.SelectedValue = DropDownList1.Items[0].ToString();
                }
            }
            catch (Exception u)
            {
                Response.Write("<script>alert('Something Went Wrong')</script>"+u.Message);
            }
            finally
            {
                con.Close();
            }
        }
     
        protected void DisplayEmployeeAddress()
        {
            string ConnectionString = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;

            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_Display", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);               
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

        }

        protected void Button2_Click2(object sender, EventArgs e)
        {
            string ConnectionString = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
            SqlConnection con = null;

            try
            {
                using (con = new SqlConnection(ConnectionString))
                {
                    int EmpId = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
                    string fname = TextBox1.Text;
                    string lname = TextBox2.Text;
                    string email = TextBox3.Text;
                    int salary = Convert.ToInt32(TextBox4.Text);
                    string design = TextBox5.Text;
                    string state = TextBox6.Text;
                    string gender = DropDownList1.Text;
                    

                    SqlCommand cmd = new SqlCommand("sp_Update", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@EmpId", EmpId);                   
                    cmd.Parameters.AddWithValue("@FirstName", fname);
                    cmd.Parameters.AddWithValue("@LastName", lname);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Salary", salary);
                    cmd.Parameters.AddWithValue("@Designation", design);
                    cmd.Parameters.AddWithValue("@State", state);
                    cmd.Parameters.AddWithValue("@Gender", gender);
                    con.Open();
                    int a = cmd.ExecuteNonQuery();
                    if (a > 0)
                    {
                        Response.Write("<script>alert('Employee Updated Successfully')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Data Not Updated!!')</script>");
                    }
                    DisplayEmployeeAddress();
                }
            }
            catch (Exception u)
            {
                Response.Write("<script>alert('Something Went Wrong')</script>" + u.Message);
            }
            finally
            {
                con.Close();
            }
        }
        int Key=0;
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[2].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[3].Text;
            TextBox3.Text = GridView1.SelectedRow.Cells[4].Text;
            TextBox4.Text = GridView1.SelectedRow.Cells[5].Text;
            TextBox5.Text = GridView1.SelectedRow.Cells[6].Text;
            TextBox6.Text= GridView1.SelectedRow.Cells[8].Text;
            DropDownList1.Text = GridView1.SelectedRow.Cells[9].Text;
            if (TextBox1.Text == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
            }
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            string ConnectionString = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
            SqlConnection con = null;
            try
            {
                using (con = new SqlConnection(ConnectionString))
                {
                    int EmpId = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);

                    SqlCommand cmd = new SqlCommand("sp_Delete", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@EmpId",EmpId);                    

                    Key = 0;
                    con.Open();
                    
                    int a = cmd.ExecuteNonQuery();
                    if (a > 0)
                    {
                        Response.Write("<script>alert('Delete SuccessFully')</script>");
                        //Response.Redirect("EmployeeAddress.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Not Executed')</script>");
                    }
                }
            }
            catch (Exception k)
            {
                Response.Write("<script>alert('Something Wrong Error in Code')</script>" + k.Message);
            }
            finally
            {
                con.Close();
            }
        }

    }
}