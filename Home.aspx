<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Application1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
        /* Styling for the menu */
        .menu {
            background-color: #f8f9fa;
            border: 1px solid #ddd;
            padding: 10px;
        }

        .menu ul {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .menu li {
            display: inline-block;
            margin-right: 15px;
        }

        .menu a {
            text-decoration: none;
            color: #007bff;
            padding: 5px 10px;
            border-radius: 5px;
        }

        .menu a:hover {
            background-color: #007bff;
            color: #fff;
        }

          /* Styling for the  */
       .form-container {
            max-width: 500px;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f8f9fa;
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
        }

        .form-group input, .form-group select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-group button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }

        .form-group button:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

          <!-- Navigation Menu -->
        <div class="menu">
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" StaticDisplayLevels="2">
                <Items>
                    <asp:MenuItem Text="Home" NavigateUrl="~/Home.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="View Data" NavigateUrl="~/ViewData.aspx"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>

          <!-- Submission Form -->
        <div class="form-container">
            <h2>Submission Form</h2>
            <div class="form-group">
                <label for="txtUserId">User ID</label>
                <asp:TextBox ID="txtUserId" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtName">Name</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="ddlJobRole">Job Role</label>
                <asp:DropDownList ID="ddlJobRole" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select Job Role" Value="" />
                    <asp:ListItem Text="Developer" Value="Developer" />
                    <asp:ListItem Text="Tester" Value="Tester" />
                    <asp:ListItem Text="Manager" Value="Manager" />
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
            </div>
        </div>
    </form>
</body>
</html>
