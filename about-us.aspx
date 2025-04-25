<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about-us.aspx.cs" Inherits="Patel02.about_us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <section class="banner banner-secondary" id="top" style="background-color: black;">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="banner-caption">
                        <h3 style="color: white; text-align: center;">About Watch</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <main>
        <section class="our-services" style="background-color: gray; color:black; padding: 20px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <div class="left-content">
                            <br>
                            <h4 style="color: black;">About Our Watch</h4>
                            <p style="text-align: justify; color: white;">
  Welcome to the future of timekeeping – Precision, Elegance, and Innovation!
                                <br>
                                
Our watches are crafted to blend functionality with style, ensuring that you make a statement while keeping track of every moment. Designed for durability and performance, our timepieces cater to those who appreciate precision and sophistication.

Whether you're looking for a classic design, a modern smartwatch, or a luxury statement piece, we have the perfect watch to complement your lifestyle.
                            </p>

                            <h5 style="color: black;">Our Story:</h5>
                            <p style="text-align: justify; color: white;">
                               Our journey began with a vision to redefine the watch industry by creating timepieces that are both stylish and functional. 
                               With a commitment to excellence, we select the finest materials and advanced technology to bring you watches that stand the test of time.
                            </p>

                            <h5 style="color: black;">Our Mission:</h5>
                            <p style="text-align: justify; color: white;">
                              Our mission is to craft watches that embody elegance, precision, and reliability. We believe in delivering high-quality timepieces that elevate your everyday experiences while keeping you ahead of time.
                                <br>
Because every second matters, we design watches that inspire confidence and reflect your unique personality.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <img src="img/watch.jpg" class="img-fluid" alt="" style="border: 2px solid black; border-radius: 10px;">
                    </div>
                </div>
            </div>
        </section>
    </main>
</asp:Content>
