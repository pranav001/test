using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ffweb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=RAJESH-PC\MSSQLSERVERR2;Initial Catalog=master;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            show();
        }
        public void show()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select *from pranav", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            Repeater1.DataSource = sdr;
            Repeater1.DataBind();
            con.Close();
        }

        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

        }

        protected void LinkButton1_btnclick(object sender, EventArgs e)
        {

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Repeater1_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                TextBox Age = (TextBox)e.Item.FindControl("TextBox10");
                con.Open();

                SqlCommand cmd = new SqlCommand("delete from pranav where age=" +  Age.Text + "", con);
                int res=cmd.ExecuteNonQuery();
                if (res > 0)
                {
                    Response.Write("Deleted");
                }
                con.Close();
                show();
                //}
                //catch (Exception ex)
                //{
                //    Response.Write(ex.Message);
                //}
            }
            if (e.CommandName == "Edit")
            {
                TextBox Email = (TextBox)e.Item.FindControl("TextBox6");
                TextBox First = (TextBox)e.Item.FindControl("TextBox7");
                TextBox Last = (TextBox)e.Item.FindControl("TextBox8");
                TextBox Add = (TextBox)e.Item.FindControl("TextBox9");
                TextBox Age = (TextBox)e.Item.FindControl("TextBox10");

                con.Open();
                SqlCommand cmd = new SqlCommand("update pranav set email='"+Email.Text+"', firstName='"+First.Text+"', lastName='"+Last.Text+"', address='"+Add.Text+"' where Age='"+Age.Text+"'",con);
                cmd.ExecuteNonQuery();
                con.Close();
                show();
                    
            }

        }

    }
}