<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_form.aspx.cs" Inherits="Patel02.login_form" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>

    <!-- Custom CSS file -->
    <link rel="stylesheet" href="css/login-style.css">
</head>
    
<body>
    <style>
        h3 {
            color: white; /* Change heading text color to white */
        }

        .form-container input {
            color: white; /* Change input text color to white */
        }

        p {
            color: white; /* Change paragraph text color to white */
        }

        a {
            color: gray; /* Change link text color to gray */
        }

        a:hover {
            color: lightgray; /* Change link hover color */
        }

        .form-btn {
            background-color: gray; /* Change button background to gray */
            color: white; /* Change button text color to white */
            font-weight: bold;
            border: 1px solid white;
            transition: 0.3s ease-in-out;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-btn:hover {
            background-color: lightgray; /* Change button color on hover */
            color: black;
        }
    </style>

    <div class="form-container">
        <form action="" method="post" id="form1" runat="server">
            <h3>Login Now</h3> <!-- Removed inline color here -->
            
            <asp:TextBox ID="email" runat="server" placeholder="Enter your email"></asp:TextBox>
            <asp:TextBox ID="password" type="password" runat="server" placeholder="Enter your password"></asp:TextBox>

            <asp:Button ID="btnlogin" runat="server" Text="Login" class="form-btn" OnClick="btnlogin_Click" />
            
            <p>Don't have an account? <a href="register_form.aspx">Register Now</a></p>
        </form>
    </div>
</body>
</html>
