using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_1
{
    public partial class Login_form : System.Web.UI.Page
    {
        Connectionclass con = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string a = "select count(Reg_id) from Login_table where Username='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'";
            string b = con.Fn_exescalar(a);
            int c = Convert.ToInt32(b);
            if (c == 1)
            {
                string g = "select Reg_id from Login_table where Username='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'";
                string h = con.Fn_exescalar(g);
                int i = Convert.ToInt32(h);
                Session["uid"] = i;

                string d = "select Log_type from Login_table where  Username='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'";
                string f = con.Fn_exescalar(d);
                if (f == "Admin")
                {
                    Response.Redirect("Admin_home.aspx");
                }
                else if (f == "User")
                {
                    Response.Redirect("Viewcategory.aspx");
                }
            }
            else
            {
                Label3.Text = "invalid";
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Reg.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_Reg.aspx");
        }
    }
}