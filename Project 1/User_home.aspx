<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_home.aspx.cs" Inherits="Project_1.User_home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Home</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: #f5f7fa;
            font-family: 'Segoe UI', Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        /* Main container for horizontal scroll */
        .scroll-container {
            display: flex;
            flex-wrap: nowrap;
            overflow-x: auto;
            overflow-y: hidden;
            gap: 20px;
            padding: 20px;
            scroll-behavior: smooth;
            justify-content: center;
            max-width: 90%;
        }

        .scroll-container::-webkit-scrollbar {
            height: 8px;
        }

        .scroll-container::-webkit-scrollbar-thumb {
            background: #ccc;
            border-radius: 4px;
        }

        /* Card layout */
        .card {
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            text-align: center;
            width: 240px;
            flex: 0 0 auto;
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            display: flex;
            flex-direction: column;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 16px rgba(0,0,0,0.15);
        }

        /* Make sure the image is fully visible inside the card */
        .card img {
            width: 100%;
            height: 200px;
            object-fit: contain; /* Ensures image is fully visible */
            background-color: #f9f9f9; /* Adds subtle background if image doesn't fill space */
            border-top-left-radius: 12px;
            border-top-right-radius: 12px;
            display: block;
        }

        .card-content {
            flex-grow: 1;
            padding: 12px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .card-content label {
            font-weight: 600;
            color: #333;
            margin-bottom: 8px;
            display: block;
            word-wrap: break-word;
        }

        .card-content asp\:button,
        .card-content input[type="submit"] {
            background-color: #0078D7;
            color: white;
            border: none;
            padding: 8px 14px;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s;
            width: 100%;
        }

        .card-content input[type="submit"]:hover {
            background-color: #005ea6;
        }

        @media (max-width: 768px) {
            .card {
                width: 200px;
            }

            .card img {
                height: 160px;
            }
        }

        @media (max-width: 480px) {
            .card {
                width: 160px;
            }

            .card img {
                height: 120px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="scroll-container">
            <ItemTemplate>
                <div class="card">
                    <asp:Image ID="Image1" runat="server"
                        ImageUrl='<%# Eval("Category_image") %>'
                        AlternateText="Category Image" />
                    <div class="card-content">
                        <asp:Label ID="Label1" runat="server"
                            Text='<%# Eval("Category_discription") %>'></asp:Label>
                        <asp:Button ID="Button1" runat="server" Text="View Products" OnCommand="Button1_Command" />
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </form>
</body>
</html>
