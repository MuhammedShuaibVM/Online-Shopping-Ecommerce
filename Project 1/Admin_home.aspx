<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_home.aspx.cs" Inherits="Project_1.Admin_home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
    <style type="text/css">
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #74b9ff, #a29bfe);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
        }

        .dashboard-container {
            background-color: #ffffff;
            padding: 40px 50px;
            border-radius: 20px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 400px;
        }

        h2 {
            color: #2d3436;
            margin-bottom: 30px;
            letter-spacing: 1px;
        }

        .link-btn {
            display: block;
            background-color: #0984e3;
            color: white;
            text-decoration: none;
            padding: 12px 0;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 500;
            margin-bottom: 15px;
            transition: 0.3s;
        }

        .link-btn:hover {
            background-color: #74b9ff;
            box-shadow: 0 0 8px rgba(0, 0, 0, 0.2);
        }

        /* ASP.NET link button reset */
        .link-btn:focus, .link-btn:active {
            outline: none;
        }

        .logout-btn {
            background-color: #d63031;
        }

        .logout-btn:hover {
            background-color: #ff7675;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="dashboard-container">
            <h2>Admin Home</h2>

            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="link-btn" OnClick="LinkButton1_Click">Insert Category</asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="link-btn" OnClick="LinkButton2_Click">Edit Category</asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" CssClass="link-btn" OnClick="LinkButton3_Click">Insert Product</asp:LinkButton>
            <asp:LinkButton ID="LinkButton4" runat="server" CssClass="link-btn" OnClick="LinkButton4_Click">Edit Product</asp:LinkButton>            
        </div>
    </form>
</body>
</html>

