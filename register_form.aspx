<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register_form.aspx.cs" Inherits="Patel02.register_form" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title color="green">register form</title>

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/login-style.css">
</head>
<body>
    <div class="form-container">
        <form id="form1" runat="server" action="" method="post"><br>
           
            <h3 style="color:gray);;">register now</h3>
            <%--<input type="text" name="name" required placeholder="enter your name">--%>
            <asp:TextBox ID="name" runat="server" placeholder="enter your name"></asp:TextBox>

            <%--<input type="email" name="email" required placeholder="enter your email">--%>
            <asp:TextBox ID="email" runat="server" placeholder="enter your email"></asp:TextBox>

            <%--<input type="password" name="password" required placeholder="enter your password">--%>
            <asp:TextBox ID="password" type="password" runat="server" placeholder="enter your password"></asp:TextBox>

            <%--<input type="password" name="cpassword" required placeholder="confirm your password">--%>
            <asp:TextBox ID="cpassword" type="password" runat="server" placeholder="confirm your password"></asp:TextBox>

            <%--<select name="user_type">
                <option value="user">user</option>
                <option value="admin" disabled>admin</option>
            </select>--%>
            <asp:DropDownList ID="user_type" runat="server" AutoPostBack="True">
                <asp:ListItem Selected>user</asp:ListItem>
                <asp:ListItem enable>admin</asp:ListItem>
            </asp:DropDownList>




            <%--<input type="submit" name="submit" value="register now" class="form-btn">--%>
            <asp:Button ID="btnregister" runat="server" Text="Register" class="form-btn" OnClick="btnregister_Click"/>

            <p>already have an account? <a href="login_form.aspx">login now</a></p>
        </form>
    </div>
</body>
</html>
