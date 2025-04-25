<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="product-details.aspx.cs" Inherits="Patel02.product_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-color: black;
            color: white;
            font-family: Arial, sans-serif;
        }

        .banner-secondary {
            background-color: gray !important; /* Gray background for banner */
            margin-top: -80px;
            padding: 20px 0;
        }

        .banner-caption h3 {
            color: white;
            text-align: center;
        }

        .container {
            margin-top: 20px;
        }

        .img-responsive {
            border-radius: 5px;
        }

        h3, h2, p {
            color: white;
        }

        small del {
            color: lightgray;
        }

        strong.text-danger {
            color: red; /* Keeping price in red for contrast */
        }

        .form-group {
            display: flex;
            align-items: center;
        }

        .form-group asp\:Button {
            background-color: gray;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            font-size: 18px;
        }

        .form-group asp\:Button:hover {
            background-color: lightgray;
            color: black;
        }

        .blue-button asp\:LinkButton {
            background-color: gray;
            color: white;
            padding: 10px 15px;
            margin: 5px;
            border-radius: 5px;
            display: inline-block;
            text-decoration: none;
        }

        .blue-button asp\:LinkButton:hover {
            background-color: lightgray;
            color: black;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
 <section class="featured-places">

     <section class="banner banner-secondary" id="top">
         <div class="container">
             <div class="row">
                 <div class="col-md-10 col-md-offset-1">
                     <div class="banner-caption">
                         <h3>
                             <asp:Label ID="lblTitle" runat="server" Text="Product Details"></asp:Label>
                         </h3>
                     </div>
                 </div>
             </div>
         </div>
     </section>

     <div class="container">
         <div class="row">
             <div class="col-md-6 col-xs-12">
                 <div>
                     <asp:Image ID="P_Image" runat="server" class="img-responsive wc-image" />
                 </div>
             </div>

             <div class="col-md-6 col-xs-12">
                 <form action="#" method="post" class="form">
                     <h3>
                         <asp:Label ID="lblP_Name" runat="server" Text="Label"></asp:Label>
                     </h3>

                     <h2>
                         <small><del>₹
                                 <asp:Label ID="lblP_Mrp" runat="server" Text="Label"></asp:Label>
                         </del></small><strong class="text-danger">₹
                             <asp:Label ID="lblP_Price" runat="server" Text="Label"></asp:Label>
                         </strong></h2>

                     <br>

                     <p class="lead">
                         <asp:Label ID="lblP_Desc" runat="server" Text="Label"></asp:Label>
                     </p>

                     <br>

                     <div class="row">
                         <div class="col-sm-4">
                             <label class="control-label">Quantity</label>

                             <div class="form-group">
                                 <asp:Button ID="btnMinus" runat="server" Text="-" OnClick="btnMinus_Click" />
                                 <asp:Label ID="lblQty" runat="server" Text="1" Style="margin: 0px 10px 0px 10px"></asp:Label>
                                 <asp:Button ID="btnPlus" runat="server" Text="+" OnClick="btnPlus_Click" />
                             </div>
                         </div>
                     </div>

                     <div class="blue-button">
                         <asp:LinkButton ID="btnAddToCart" runat="server" OnClick="btnAddToCart_Click">Add To Cart</asp:LinkButton>
                         <asp:LinkButton ID="btnWishList" runat="server" OnClick="btnWishList_Click">❤</asp:LinkButton>
                     </div>
                 </form>
             </div>
         </div>
     </div>

 </section>
</asp:Content>
