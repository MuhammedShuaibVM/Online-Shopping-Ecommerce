<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_form.aspx.cs" Inherits="Project_1.Login_form" %>


    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E-Commerce Login</title>
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

        .login-container {
            background-color: white;
            padding: 40px 50px;
            border-radius: 20px;
            box-shadow: 0px 8px 25px rgba(0, 0, 0, 0.2);
            width: 350px;
            text-align: center;
        }

        .login-container h2 {
            margin-bottom: 25px;
            color: #2d3436;
            letter-spacing: 1px;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .form-group label {
            display: block;
            color: #636e72;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-group input[type="text"],
        .form-group input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #b2bec3;
            border-radius: 8px;
            font-size: 14px;
            outline: none;
            transition: 0.3s;
        }

        .form-group input:focus {
            border-color: #0984e3;
            box-shadow: 0 0 5px #74b9ff;
        }

        .btn {
            background-color: #0984e3;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            transition: 0.3s;
        }

        .btn:hover {
            background-color: #74b9ff;
        }

        .links {
            margin-top: 15px;
        }

        .links a {
            color: #0984e3;
            text-decoration: none;
            font-size: 14px;
            display: block;
            margin: 5px 0;
        }

        .links a:hover {
            text-decoration: underline;
        }

        #Label3 {
            margin-top: 10px;
            color: red;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Welcome Back</h2>

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your username"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Enter your password"></asp:TextBox>
            </div>

            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Login" OnClick="Button1_Click" />

            <asp:Label ID="Label3" runat="server" Text="" />

            <div class="links">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Admin Registration</asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">User Registration</asp:LinkButton>
            </div>
        </div>
    </form>
</body>
</html>
