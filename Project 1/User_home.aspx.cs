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
    public partial class User_home : System.Web.UI.Page
    {
        Connectionclass obj = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                CategoryBind();
            }
        }
        public void CategoryBind()
        {
            string s = "select * from Category_table where Category_status='Active'";
            DataSet ds = obj.Fn_exeadapter(s);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Session["pid"] = id;
            Response.Redirect("Viewallproducts.aspx");
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Session["pid"] = id;
            Response.Redirect("Viewallproducts.aspx");
        }
    }
}