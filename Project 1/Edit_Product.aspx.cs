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
    public partial class Edit_Product : System.Web.UI.Page
    {
        Connectionclass obj = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind_Grid();
            }
        }
        public void Bind_Grid()
        {
            string s = "select * from Product_table";
            DataSet ds = obj.Fn_exeadapter(s);
            GridEditProd.DataSource = ds;
            GridEditProd.DataBind();
        }

        protected void GridEditProd_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridEditProd.DataKeys[i].Value);
            TextBox txtProName = (TextBox)GridEditProd.Rows[i].FindControl("txtProName");
            TextBox txtProDes = (TextBox)GridEditProd.Rows[i].FindControl("txtProDes");
            FileUpload fuProImg = (FileUpload)GridEditProd.Rows[i].FindControl("fuProImg");
            TextBox txtPrice = (TextBox)GridEditProd.Rows[i].FindControl("txtPrice");
            DropDownList ddStock = (DropDownList)GridEditProd.Rows[i].FindControl("ddStock");
            for (int j = 1; j <= 100; j++)
            {
                ddStock.Items.Add(new ListItem(j.ToString(), j.ToString()));
            }
            ddStock.DataBind();
            DropDownList ddStatus = (DropDownList)GridEditProd.Rows[i].FindControl("ddStatus"); 
            string py = "~/ProductImages/" + fuProImg.FileName;
            fuProImg.SaveAs(MapPath(py));
            string s = "update Product_table set Product_name='" + txtProName.Text + "',Product_discription='" + txtProDes.Text + "',Product_price='" + txtPrice.Text + "',Product_image='" + py + "',Product_stock='" + ddStock.SelectedItem.Text + "',Product_Status='" + ddStatus.SelectedItem.Text + "' where Product_id=" + id + "";
            obj.Fn_exenonquery(s);
            GridEditProd.EditIndex = -1;
            Bind_Grid();
        }

        protected void GridEditProd_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int i = e.NewEditIndex;
            GridEditProd.EditIndex = e.NewEditIndex;
            Bind_Grid();

            DropDownList ddStock = (DropDownList)GridEditProd.Rows[i].FindControl("ddStock");
            for (int j = 1; j <= 100; j++)
            {
                ddStock.Items.Add(new ListItem(j.ToString(), j.ToString()));
            }
            ddStock.DataBind();
        }

        protected void GridEditProd_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridEditProd.EditIndex = -1;
            Bind_Grid();
        }
    }
    
}