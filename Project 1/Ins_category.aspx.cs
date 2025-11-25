using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_1
{
    public partial class Ins_category : System.Web.UI.Page
    {
        Connectionclass con = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            string image = "~/ProductImages/+" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(image));

            string a = "select count(Category_id) From Category_table where Category_name='" + TextBox1.Text + "'";
            string b = con.Fn_exescalar(a);
            int c = Convert.ToInt32(b);
            Session["Couid"] = c;
            if (c > 0)
               
            {
            
                    Label4.Text = "already exist...";
                
            }
            else
            {
                string f = "insert into Category_table values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + image + "','Available')";
                int g = con.Fn_exenonquery(f);
                if (g == 1)
                {
                    Label4.Text = "inserted...";
                }
            }
        }        
    }
}