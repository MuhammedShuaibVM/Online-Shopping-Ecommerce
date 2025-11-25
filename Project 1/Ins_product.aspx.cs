using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Project_1
{
    public partial class Product_list : System.Web.UI.Page
    {
        Connectionclass con = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (! IsPostBack)
            {
                string d = "select * from Category_table";
                DataSet ds = con.Fn_exeadapter(d);
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "Category_name";
                DropDownList1.DataValueField = "Category_id";
                DropDownList1.Items.Insert(0, "Available");
                DropDownList1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string image = "~/ProductImages/+" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(image));

            string a = "select Category_id From Category_table where Category_name='" + DropDownList1.SelectedItem.Text + "'";
            string b = con.Fn_exescalar(a);
            int cid = Convert.ToInt32(b);
            Session["catid"] = cid;

            //string p="select Product_id from Product_table where /*"*/ 
            
            string f = "insert into product_table values(" + cid + ",'" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ",'" + image + "'," + TextBox4.Text + ",' Available ')";
            int g = con.Fn_exenonquery(f);
            if(g==1)
            {
                Label7.Text = "inserted";
            }
            else
            {
                Label7.Text = "invalid";
            }
        }
    }
}