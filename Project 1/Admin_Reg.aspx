<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Reg.aspx.cs" Inherits="Project_1.Admin_login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration</title>
    <style type="text/css">
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #81ecec, #74b9ff);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
        }

        .register-container {
            background-color: #fff;
            padding: 40px 50px;
            border-radius: 20px;
            box-shadow: 0px 8px 25px rgba(0, 0, 0, 0.2);
            width: 420px;
            text-align: center;
        }

        h2 {
            color: #2d3436;
            margin-bottom: 25px;
            letter-spacing: 1px;
        }

        .form-group {
            text-align: left;
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            color: #636e72;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #b2bec3;
            border-radius: 8px;
            outline: none;
            transition: 0.3s;
            font-size: 14px;
        }

        input:focus {
            border-color: #0984e3;
            box-shadow: 0 0 5px #74b9ff;
        }

        .radio-group {
            text-align: left;
            color: #2d3436;
            margin-bottom: 15px;
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

        #Label8 {
            color: red;
            font-size: 14px;
            display: block;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="register-container">
            <h2>Admin Registration</h2>

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your name"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter your email"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Phone"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter your phone number"></asp:TextBox>
            </div>

            <div class="form-group radio-group">
                <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="Male">Male</asp:ListItem>
                    <asp:ListItem Value="Female">Female</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter your address"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="Label6" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" placeholder="Choose a username"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" placeholder="Enter a password"></asp:TextBox>
            </div>

            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Register" OnClick="Button1_Click" />

            <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>

