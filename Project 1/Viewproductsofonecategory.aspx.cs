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
    public partial class Viewproductsofonecategory : System.Web.UI.Page
    {
        Connectionclass con = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string p = "select * from Product_table where Category_id=" + Session["catid"] + "";
                SqlDataReader ds = con.Fn_exereader(p);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Session["pid"] = id;
            Response.Redirect("Viewoneproduct.aspx");
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Session["pid"] = id;
            Response.Redirect("Viewoneproduct.aspx");
        }
    }
}