<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="empty-cart.aspx.cs" Inherits="Patel02.empty_cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-color: black;
            color: white;
        }
        .banner-secondary {
            background-color: gray !important;
        }
        .banner-caption h3 {
            color: white !important;
        }
        .blue-button a {
            background-color: gray !important;
            color: white !important;
            border: none;
            padding: 10px 20px;
            text-decoration: none;
        }
        .blue-button a:hover {
            background-color: white !important;
            color: black !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <section class="pt-5 pb-5">
     <section class="banner banner-secondary" id="top" style="margin-top: -80px;">
         <div class="container">
             <div class="row">
                 <div class="col-md-10 col-md-offset-1">
                     <div class="banner-caption">
                         <h3 style="text-align: center;">Shopping Cart</h3>
                     </div>
                 </div>
             </div>
         </div>
     </section>
     <div class="container">
         <center>
             <asp:Image ID="imgEmprtWishlist" runat="server" ImageUrl="~/img/empty-cart.png" Height="40%" Width="40%" ImageAlign="AbsMiddle" />
         </center>

         <div class="row mt-4 d-flex align-items-right">
             <div class="display-5 mb-2 text-center blue-button">
                 <a href="products.aspx" class="mb-4 btn-lg pl-5 pr-5"
                     style="margin-top: 50px;">Continue Shopping</a>
             </div>
         </div>   
     </div>
 </section>
</asp:Content>