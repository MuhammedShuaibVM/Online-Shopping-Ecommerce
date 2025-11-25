<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Viewallproducts.aspx.cs" Inherits="Project_1.Viewallproducts" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Categories</title>

    <style>
        /* SAME CSS FROM YOUR PRODUCT PAGE — SIMPLIFIED FOR CATEGORIES */

        * { margin: 0; padding: 0; box-sizing: border-box; }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding: 20px;
        }

        #form1 {
            max-width: 1500px;
            margin: auto;
            background: rgba(255, 255, 255, 0.95);
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 20px 60px rgba(0,0,0,0.3);
        }

        /* Grid layout */
        #DataList1 {
            width: 100%;
            display: block;
        }

        #DataList1 > tbody {
            display: grid;
            grid-template-columns: repeat(5, 1fr);
            gap: 25px;
        }

        #DataList1 > tbody > tr { display: contents; }
        #DataList1 > tbody > tr > td { display: block; }

        /* Category card */
        .cat-card {
            background: white;
            padding: 20px;
            border-radius: 18px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
            text-align: center;
            transition: 0.3s;
            animation: fadeIn 0.6s ease both;
        }

        .cat-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 12px 28px rgba(0,0,0,0.2);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Category image */
        .cat-card img {
            width: 100%;
            height: 180px;
            object-fit: contain;
            border-radius: 12px;
            background: #f1f1f1;
            transition: 0.3s;
        }

        .cat-card img:hover {
            transform: scale(1.05);
        }

        /* Category name */
        .cat-card a {
            display: block;
            margin-top: 12px;
            font-size: 18px;
            font-weight: 600;
            text-decoration: none;
            color: #667eea;
            transition: 0.3s;
        }

        .cat-card a:hover {
            color: #764ba2;
            transform: scale(1.03);
        }

        /* Responsive */
        @media (max-width: 1200px) {
            #DataList1 > tbody { grid-template-columns: repeat(4, 1fr); }
        }
        @media (max-width: 900px) {
            #DataList1 > tbody { grid-template-columns: repeat(3, 1fr); }
        }
        @media (max-width: 700px) {
            #DataList1 > tbody { grid-template-columns: repeat(2, 1fr); }
        }
        @media (max-width: 480px) {
            #DataList1 > tbody { grid-template-columns: repeat(1, 1fr); }
        }

    </style>

</head>
<body>

<form id="form1" runat="server">

    <asp:DataList ID="DataList1" runat="server" RepeatColumns="5">
        <ItemTemplate>

            <div class="cat-card">
                <asp:ImageButton ID="ImageButton1" 
                    runat="server" 
                    ImageUrl='<%# Eval("Product_image") %>'
                    Width="100%" Height="180px"
                    OnCommand="ImageButton1_Command"
                    CommandArgument='<%# Eval("Product_id") %>' />

                <asp:LinkButton ID="LinkButton1" 
                    runat="server" 
                    Text='<%# Eval("Product_name") %>' 
                    OnCommand="LinkButton1_Command"
                    CommandArgument='<%# Eval("Product_id") %>'></asp:LinkButton>
            </div>

        </ItemTemplate>
    </asp:DataList>

</form>

</body>
</html>
