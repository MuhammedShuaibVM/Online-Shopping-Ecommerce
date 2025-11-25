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
    public partial class Viewoneproduct : System.Web.UI.Page
    {
        Connectionclass obj = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                string p = "select * from Product_table where product_id=" + Session["pid"] + "";
                SqlDataReader ds = obj.Fn_exereader(p);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }
    }
}
