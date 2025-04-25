<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Patel02.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<!DOCTYPE html>
    <html>
    <head>
        <link rel="stylesheet" href="css/profile-style.css">
    </head></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <style><style>
body {
    background: #1a1a1a;
    color: white;
}

h1, h2, p, a, span, label {
    color: white;
}

.scnd-font-color {
    color: gray;
}

input[type=text] {
    background: #333;
    color: white;
    border: solid 1px gray;
}

input[type=text]::placeholder {
    color: lightgray;
}

.titular {
    background: #333;
    color: white;
}

.button {
    background: gray;
    color: black;
}

.button:hover {
    background: white;
    color: black;
}

.menu-box .titular {
    background: #444;
}

.menu-box-number {
    background: gray;
    color: black;
}

.menu-box-tab {
    border-bottom: 1px solid gray;
    color: white;
}

.menu-box-tab:hover {
    background: #555;
    color: white;
}

.profile-options a:hover {
    background: #666;
}

.subscribe.button {
    background: gray;
    color: black;
}

.subscribe.button:hover {
    background: black;
    color: white;
}
h1, h2, p, a, span, label {
    color: black; /* Changing text color to black */
}

.scnd-font-color {
    color: darkgray; /* Adjusted for contrast */
}

.menu-box-tab {
    color: black;
}

.menu-box-tab:hover {
    color: white;
}

</style>

</style>
    <body>
        <div class="main-container">

            <!-- LEFT-CONTAINER -->
            <div class="left-container container" style="margin-left: -70px;">
                <div class="menu-box block">
                    <!-- MENU BOX (LEFT-CONTAINER) -->
                    <h2 class="titular" style="color: white">MENU BOX</h2>
                    <ul class="menu-box-menu">
                        <li>
                            <a class="menu-box-tab" href="cart.aspx">
                                <span class="icon entypo-basket scnd-font-colorb"></span><i class="fa fa-shopping-cart" aria-hidden="true"></i
                        </li>
                        <li>
                            <a class="menu-box-tab" href="wishlist.aspx"><span
                                class="icon entypo-heart scnd-font-color"></span>Wishlist</a>
                            <div class="menu-box-number" style="color: white;"></div>
                        </li>
                        <li>
                            <a class="menu-box-tab" href="track-order.aspx" target="blank"><span
                                class="icon entypo-location scnd-font-color"></span>Track Order</a>
                        </li>
                        <li>
                            <a class="menu-box-tab" href="index.aspx"><span
                                class="icon entypo-home scnd-font-color"></span>Home Page</a>
                        </li>
                    </ul>
                </div>
                <!-- MIDDLE-CONTAINER -->
                <div class="middle-container container" style="margin-left: 380px; margin-top: -380px;">
                    <div class="profile block">
                        <!-- PROFILE (MIDDLE-CONTAINER) -->
                        <div style="padding-top: 50px;"></div>
                        <div class="profile-picture big-profile-picture clear">
                            <img width="150px" alt="user-profile"
                                src="img/profile.png">
                        </div>
                        <h1 class="user-name">
                            <asp:Label ID="lblSesUser" runat="server" Text="Label"></asp:Label>
                        </h1>
                        <div class="profile-description">
                            <p class="scnd-font-color">Welcome To Patel Watch ! </p>
                        </div>

                        <asp:LinkButton ID="lbtnLogout" runat="server" class="subscribe button" style="color: white" OnClick="lbtnLogout_Click1" >Logout</asp:LinkButton>
                        <%--<a class="subscribe button" href="logout.aspx" style="color: white">LOG OUT</a>--%>

                    </div>
                    <!-- RIGHT-CONTAINER -->
                    <div class="right-container container" style="margin-left: 380px; margin-top: -390px;">
                        <div class="join-newsletter block">
                            <!-- JOIN NEWSLETTER (RIGHT-CONTAINER) -->
                            <h2 class="titular">JOIN THE NEWSLETTER</h2>
                            <div class="input-container">
                                <input type="text" placeholder="yourname@gmail.com" class="email text-input">
                                <div class="input-icon envelope-icon-newsletter">
                                    <span
                                        class="fontawesome-envelope scnd-font-color"></span>
                                </div>
                            </div>
                            <a class="subscribe button" href="#21" style="color: white">SUBSCRIBE</a>
                        </div>
                    </div>
                    <!-- end right-container -->
                </div>
                <!-- end main-container -->
    </body>
    </div>
    </div></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
 </html></asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
