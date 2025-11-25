using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_1
{
    public partial class Admin_login : System.Web.UI.Page
    {
        Connectionclass con = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string a = "select count(Reg_id) From Login_table where Username='" + TextBox5.Text + "'";
            string b = con.Fn_exescalar(a);
            int c = Convert.ToInt32(b);
            
            if (c > 0)

            {

                Label8.Text = "Try another Username...";

            }
            else
            {

                string s = "select Max(reg_id) from Login_table";
                string t = con.Fn_exescalar(s);
                int regid = 0;
                if (t == "")
                {
                    regid = 1;
                }
                else
                {
                    int j = Convert.ToInt32(t);
                    regid = j + 1;

                }
                string k = "insert into Admin_table values('" + regid + "','" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ",'" + RadioButtonList1.SelectedItem.Text + "','" + TextBox4.Text + "','Admin','Active','" + TextBox5.Text + "','" + TextBox6.Text + "')";
                int l = con.Fn_exenonquery(k);
                if (l == 1)
                {
                    string m = "insert into Login_table values('" + regid + "','" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ",'" + RadioButtonList1.SelectedItem.Text + "','" + TextBox4.Text + "','Admin','Active','" + TextBox5.Text + "','" + TextBox6.Text + "')";
                    int n = con.Fn_exenonquery(m);
                    if (n == 1 && l == 1)
                    {
                        Response.Redirect("Admin home.aspx");
                    }
                    else
                    {
                        Label8.Text = "invalid entry...";
                    }
                }
            }
        }       
    }
}