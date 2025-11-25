<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_Product.aspx.cs" Inherits="Project_1.Edit_Product" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Products</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 90%;
            margin: 40px auto;
            background: #fff;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .gridview-wrapper {
            overflow-x: auto;
        }
        .gridview-wrapper table {
            width: 100%;
            border-collapse: collapse;
        }
        .gridview-wrapper th, 
        .gridview-wrapper td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        .gridview-wrapper th {
            background-color: #007bff;
            color: #fff;
        }
        .gridview-wrapper tr:hover {
            background-color: #f1f1f1;
        }
        .gridview-wrapper .edit-mode {
            background-color: #fffbe6;
        }
        .gridview-wrapper input[type="text"],
        .gridview-wrapper select {
            width: 100%;
            padding: 6px 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }
        .gridview-wrapper input[type="file"] {
            border: none;
        }
        .gridview-wrapper .action-buttons {
            text-align: center;
        }
        .gridview-wrapper .btn {
            padding: 6px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            color: #fff;
        }
        .gridview-wrapper .btn-update {
            background-color: #28a745;
        }
        .gridview-wrapper .btn-cancel {
            background-color: #dc3545;
        }
        .product-img {
            width: 60px;
            height: 50px;
            object-fit: cover;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Edit Products</h2>
            <div class="gridview-wrapper">
                <asp:GridView ID="GridEditProd" runat="server" AutoGenerateColumns="False" DataKeyNames="Product_id"
                    OnRowCancelingEdit="GridEditProd_RowCancelingEdit" 
                    OnRowEditing="GridEditProd_RowEditing" 
                    OnRowUpdating="GridEditProd_RowUpdating"
                    CssClass="grid-table">
                    <Columns>
                        <asp:TemplateField HeaderText="Product Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtProName" runat="server" Text='<%# Eval("Product_name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblProName" runat="server" Text='<%# Eval("Product_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Description">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtProDes" runat="server" Text='<%# Eval("Product_discription") %>' TextMode="MultiLine" Rows="3"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblProDes" runat="server" Text='<%# Eval("Product_discription") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Image">
                            <EditItemTemplate>
                                <asp:FileUpload ID="fuProImg" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="ImgPro" runat="server" CssClass="product-img" ImageUrl='<%# Eval("Product_image") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Price">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtPrice" runat="server" Text='<%# Eval("Product_price") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Product_price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Stock">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddStock" runat="server">
                                    <asp:ListItem>In Stock</asp:ListItem>
                                    <asp:ListItem>Out of Stock</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblStock" runat="server" Text='<%# Eval("Product_stock") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Status">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddStatus" runat="server">
                                    <asp:ListItem>Available</asp:ListItem>
                                    <asp:ListItem>Unavailable</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Product_Status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:CommandField HeaderText="Action" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>

