<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ins_category.aspx.cs" Inherits="Project_1.Ins_category" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Insert Category</title>
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

        .form-container {
            background-color: #ffffff;
            padding: 40px 50px;
            border-radius: 20px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
            width: 450px;
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

        .textbox, .textarea, .fileupload {
            width: 100%;
            padding: 10px;
            border: 1px solid #b2bec3;
            border-radius: 8px;
            font-size: 14px;
            margin-bottom: 20px;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }

        .textbox:focus, .textarea:focus {
            border-color: #0984e3;
            outline: none;
        }

        .btn-submit {
            background-color: #0984e3;
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
            background-color: #74b9ff;
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
            <h2>Insert Category</h2>

            <asp:Label ID="Label1" runat="server" Text="Category Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>

            <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" CssClass="textarea" Rows="4"></asp:TextBox>

            <asp:Label ID="Label3" runat="server" Text="Category Image"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="fileupload" />

            <asp:Button ID="Button1" runat="server" CssClass="btn-submit" OnClick="Button1_Click" Text="Add Category" />
            <asp:Label ID="Label4" runat="server" CssClass="message" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>

