<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="wishlist.aspx.cs" Inherits="Patel02.wishlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
 <section class="pt-5 pb-5">
     <section class="banner banner-secondary" id="top"
         style="background-color: rgb(37, 231, 53); margin-top: -80px;">
         <div class="container">
             <div class="row">
                 <div class="col-md-10 col-md-offset-1">
                     <div class="banner-caption">
                         <h3 style="color: white; text-align: center;">Wishlist
                         </h3>
                     </div>
                 </div>
             </div>
         </div>
     </section>
     <div class="container">
         <div class="row w-100">
             <div class="col-lg-12 col-md-12 col-12" style="margin-top:5px;">
                 <asp:DataList ID="wishDataList" runat="server" CssClass="table table-condensed table-responsive" OnItemCommand="wishDataList_ItemCommand">
                     <ItemTemplate>
                         <div class="row">
                             <div class="col-md-3 text-left">
                                 <asp:Image ID="imgProduct" runat="server" src='<%# Eval("P_Image") %>' CssClass="img-fluid d-none d-md-block rounded mb-2 shadow" Height="190" />
                             </div>
                             <div class="col-md-3 text-center mt-sm-2">
                                 <h3><%# Eval("P_Name") %></h3>

                             </div>
                             <div class="col-md-3 text-center mt-sm-2">
                                 <h3>Price: ₹<%# Eval("P_Price") %></h3>

                             </div>
                             <div class="col-md-3 text-right blue-button" style="margin-top: 10px;">

                                 <asp:LinkButton runat="server" ID="btnAddToCartCart" CommandName="cmd_cart" CommandArgument='<%# Eval("Wish_Id") %>'>
                                         Add To Cart
                                 </asp:LinkButton>
                                 <asp:LinkButton runat="server" ID="btnRemoveProduct" CommandName="cmd_delete" CommandArgument='<%# Eval("Wish_Id") %>'>
                                          <i  class="fa fa-close"></i></span>
                                 </asp:LinkButton>
                                 <%--<asp:Button ID="btnRemove" runat="server" Text="Remove" CssClass="btn btn-white border-secondary bg-white btn-md mb-2" CommandArgument='<%# Eval("cart_id") %>' />--%>
                             </div>

                         </div>
                         <hr />
                     </ItemTemplate>
                 </asp:DataList>

                 <%--<table id="shoppingCart" class="table table-condensed table-responsive">
                     <thead>
                         <tr>
                             <th style="width: 60%">Product</th>
                             <th style="width: 12%">Price</th>
                             <th style="width: 16%">Action</th>
                         </tr>
                     </thead>

                     <tbody>
                         <tr>
                             <td data-th="Product">
                                 <div class="row">
                                     <div class="col-md-3 text-left">
                                         <img src="img\nail3.jpg" alt="" class="img-fluid d-none d-md-block rounded mb-2 shadow ">
                                     </div>
                                     <div class="col-md-9 text-left mt-sm-2">
                                         <h4>pro name
                                         </h4>

                                     </div>
                                 </div>
                             </td>
                             <td data-th="Price">₹
                                 price
                             </td>
                             <td class="actions" data-th="Operation">
                                 <div class="text-left">
                                     <form action="" method="post">
                                         <button class="btn btn-white border-secondary bg-white btn-md mb-2"
                                             name="cart" value="cart">
                                             <i class="fa fa-shopping-cart" style="font-size: 20px"></i>
                                         </button>
                                         <button class="btn btn-white border-secondary bg-white btn-md mb-2"
                                             name="delete_pid" value="delete">
                                             <i class="fa fa-trash" style="font-size: 20px"></i>
                                         </button>
                                     </form>
                                 </div>
                             </td>
                         </tr>

                         <center>
                             <p>You don't have any wished products</p>
                         </center>
                     </tbody>
                   
                 </table>--%>
             </div>
         </div>
         <div class="row mt-4 d-flex align-items-right">
             <div class="display-5 mb-2 text-center blue-button">
                 <a href="products.aspx" class="mb-4 btn-lg pl-5 pr-5"
                     style="margin-top: 50px;">Continue Shopping</a>
             </div>
         </div>
     </div>
 </section></asp:Content>

