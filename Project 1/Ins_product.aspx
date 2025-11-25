<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ins_product.aspx.cs" Inherits="Project_1.Product_list" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Insert Product</title>
    <style type="text/css">
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #81ecec, #6c5ce7);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
        }

        .form-container {
            background-color: #ffffff;
            padding: 40px 50px;
            border-radius: 20px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
            width: 550px;
            max-height: 90vh;
            overflow-y: auto;
        }

        h2 {
            text-align: center;
            color: #2d3436;
            margin-bottom: 30px;
        }

        label {
            font-weight: 600;
            color: #2d3436;
            display: block;
            margin-bottom: 5px;
        }

        .textbox, .textarea, .dropdown, .fileupload {
            width: 100%;
            padding: 10px;
            border: 1px solid #b2bec3;
            border-radius: 8px;
            font-size: 14px;
            margin-bottom: 20px;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }

        .textbox:focus, .textarea:focus, .dropdown:focus {
            border-color: #6c5ce7;
            outline: none;
        }

        .btn-submit {
            background-color: #6c5ce7;
            color: white;
            border: none;
            padding: 12px;
            width: 100%;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-submit:hover {
            background-color: #a29bfe;
            box-shadow: 0 0 8px rgba(0, 0, 0, 0.2);
        }

        .message {
            text-align: center;
            margin-top: 15px;
            color: green;
            font-weight: 500;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Insert Product</h2>

            <asp:Label ID="Label8" runat="server" Text="Category Name"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown"></asp:DropDownList>

            <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>

            <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" CssClass="textarea" Rows="5"></asp:TextBox>

            <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox"></asp:TextBox>

            <asp:Label ID="Label4" runat="server" Text="Product Image"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="fileupload" />

            <asp:Label ID="Label5" runat="server" Text="Stock Quantity"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox"></asp:TextBox>

            <asp:Button ID="Button1" runat="server" CssClass="btn-submit" OnClick="Button1_Click" Text="Add Product" />
            <asp:Label ID="Label7" runat="server" CssClass="message" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
