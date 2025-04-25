<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Patel02.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <section class="banner banner-secondary" id="top" style="background-color: black;">
     <div class="container">
         <div class="row">
             <div class="col-md-10 col-md-offset-1">
                 <div class="banner-caption">
                     <h3 style="color: white; text-align: center;">Contact Us</h3>
                 </div>
             </div>
         </div>
     </div>
 </section>

 <main>
     <section class="popular-places" style="background-color: gray; color: white; padding: 20px;">
         <div class="container">
             <div class="contact-content">
                 <div class="row">
                     <div class="col-md-8">
                         <div class="left-content">
                             <div class="row">
                                 <form method="" action="">
                                     <div class="col-md-6">
                                         <asp:TextBox ID="name" runat="server" class="form-control" placeholder="Your Name..." style="background-color: white; color: black;"></asp:TextBox>
                                     </div>
                                     <div class="col-md-6">
                                         <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Your Email..." style="background-color: white; color: black;"></asp:TextBox>
                                     </div>
                                     <div class="col-md-12">
                                         <asp:TextBox ID="subject" runat="server" class="form-control" placeholder="Your Subject..." style="background-color: white; color: black;"></asp:TextBox>
                                     </div>
                                     <div class="col-md-12">
                                         <asp:TextBox ID="message" runat="server" class="form-control" placeholder="Your Message..." TextMode="MultiLine" style="background-color: white; color: black;"></asp:TextBox>
                                     </div>
                                     <div class="col-md-12">
                                         <div class="blue-button">
                                             <asp:LinkButton ID="submit" runat="server" OnClick="submit_Click" style="background-color: black; color: white; border: 1px solid white; padding: 10px;">Send Message</asp:LinkButton>
                                         </div>
                                     </div>
                                 </form>
                             </div>
                         </div>
                     </div>
                     <div class="col-md-4">
                         <div class="right-content">
                             <div class="row">
                                 <div class="col-md-12">
                                     <div class="content">
                                         <p style="color: white;">Contact us and visit our store.</p>
                                        
                                                 <p style="color: white;"><i class="fa fa-map-marker"></i> Watch Store, MG Road, Rajkot - 360003</p>
                                                    <ul>
                                                        <li><span style="color: white;">Phone:</span><a href="#" style="color: white;">+91 9316319909</a></li>
                                                        <li><span style="color: white;">Email:</span><a href="#" style="color: white;">contact@watchstore.com</a></li>
                                                    </ul>
                                          </div>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </section>
 </main>
</asp:Content>