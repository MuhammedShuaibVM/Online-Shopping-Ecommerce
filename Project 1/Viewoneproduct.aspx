<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Viewoneproduct.aspx.cs" Inherits="Project_1.Viewoneproduct" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product View</title>

    <style>
        body {
            font-family: Arial;
            background: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 100%;
            display: flex;
            justify-content: center;
            padding-top: 50px;
        }

        .product-card {
            background: white;
            padding: 20px;
            width: 350px;
            border-radius: 10px;
            box-shadow: 0 0 10px #ccc;
            text-align: center;
        }

        .product-card img {
            width: 100%;
            height: 250px;
            object-fit: contain;
            border-radius: 8px;
        }

        .product-card h2 {
            margin-top: 15px;
            font-size: 20px;
        }

        .product-card p {
            font-size: 15px;
            color: #333;
        }

        .btn {
            background: #007bff;
            color: white;
            padding: 10px 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 15px;
        }

        .btn:hover {
            background: #005fcc;
        }
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="container">
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="1">
                <ItemTemplate>
                    <div class="product-card">
                        <asp:Image ID="Image1" runat="server" 
                                   ImageUrl='<%# Eval("Product_image") %>' />

                        <h2><%# Eval("Product_name") %></h2>

                        <p><b>Price:</b> ₹ <%# Eval("Product_price") %></p>

                        <p><%# Eval("Product_discription") %></p>

                        <table class="auto-style1">
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>Quantity:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("Product_id") %>' CssClass="btn" Text="Add to Cart" />
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>

    </form>
</body>
</html>
