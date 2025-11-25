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
    public partial class Edit_Category : System.Web.UI.Page
    {
        Connectionclass obj = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind_Grid();
            }
        }
        public void bind_Grid()
        {
            string s = "select * from Category_table";
            DataSet ds = obj.Fn_exeadapter(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            bind_Grid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bind_Grid();
        }

        protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtnme = (TextBox)GridView1.Rows[i].FindControl("txtname");
            TextBox txtdis = (TextBox)GridView1.Rows[i].FindControl("txtdis");
            FileUpload txtimg = (FileUpload)GridView1.Rows[i].FindControl("txtimg");
            TextBox txtsts = (TextBox)GridView1.Rows[i].FindControl("txtsts");
            DropDownList ddStock = (DropDownList)GridView1.Rows[i].FindControl("ddstatus");
            string pt = "~/ProductImages/" + txtimg.FileName;
            txtimg.SaveAs(MapPath(pt));
            string status = ddStock.SelectedItem.Text;
            string s = "update Category_table set Category_name='" + txtnme.Text + "',Category_discription='" + txtdis.Text + "',Category_image='" + pt + "',Category_status='" + status + "' where Category_id=" + id + "";
            obj.Fn_exenonquery(s);
            GridView1.EditIndex = -1;
            bind_Grid();
            GridView1.EditIndex = -1;
            bind_Grid();
        }
    }
}
