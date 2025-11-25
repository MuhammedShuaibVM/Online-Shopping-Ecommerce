<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_Category.aspx.cs" Inherits="Project_1.Edit_Category" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Category</title>
    <style type="text/css">
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #74b9ff, #a29bfe);
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            width: 90%;
            max-width: 1000px;
            background-color: white;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0px 8px 25px rgba(0, 0, 0, 0.2);
            overflow-x: auto;
        }

        h2 {
            text-align: center;
            color: #2d3436;
            margin-bottom: 20px;
        }

        .gridview {
            width: 100%;
            border-collapse: collapse;
            font-size: 14px;
            text-align: left;
        }

        .gridview th {
            background-color: #6c5ce7;
            color: white;
            padding: 12px;
            border-bottom: 2px solid #a29bfe;
        }

        .gridview td {
            padding: 10px;
            border-bottom: 1px solid #dfe6e9;
            vertical-align: middle;
        }

        .gridview tr:hover {
            background-color: #f1f2f6;
            transition: 0.3s;
        }

        .gridview img {
            border-radius: 8px;
        }

        .gridview input[type="text"] {
            width: 90%;
            padding: 6px;
            border: 1px solid #b2bec3;
            border-radius: 6px;
        }

        .gridview select {
            padding: 6px;
            border: 1px solid #b2bec3;
            border-radius: 6px;
        }

        .gridview .aspNetDisabled {
            opacity: 0.7;
        }

        .gridview .btn-edit, .gridview .btn-update, .gridview .btn-cancel {
            background-color: #6c5ce7;
            color: white;
            border: none;
            padding: 6px 12px;
            border-radius: 6px;
            cursor: pointer;
            transition: 0.3s;
        }

        .gridview .btn-edit:hover,
        .gridview .btn-update:hover,
        .gridview .btn-cancel:hover {
            background-color: #a29bfe;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Edit Category</h2>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="Category_id"
                CssClass="gridview"
                OnRowCancelingEdit="GridView1_RowCancelingEdit"
                OnRowEditing="GridView1_RowEditing1"
                OnRowUpdating="GridView1_RowUpdating1">

                <Columns>
                    <asp:TemplateField HeaderText="Category Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtname" runat="server" Text='<%# Eval("Category_name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Category_name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Description">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtdis" runat="server" Text='<%# Eval("Category_discription") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Category_discription") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Image">
                        <EditItemTemplate>
                            <asp:FileUpload ID="txtimg" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="50px" Width="70px" ImageUrl='<%# Eval("Category_image") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Status">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddStatus" runat="server">
                                <asp:ListItem>Active</asp:ListItem>
                                <asp:ListItem>Inactive</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Category_status") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:CommandField HeaderText="Action" ShowEditButton="True" ButtonType="Button" 
                        EditText="Edit" UpdateText="Update" CancelText="Cancel"
                        ControlStyle-CssClass="btn-edit" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>

