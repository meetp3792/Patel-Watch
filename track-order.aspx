<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="track-order.aspx.cs" Inherits="Patel02.track_order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <section class="pt-5 pb-5">
      <section class="banner banner-secondary" id="top" style="background-color: gray; margin-top: -80px;">
          <div class="container">
              <div class="row">
                  <div class="col-md-10 col-md-offset-1">
                      <div class="banner-caption">
                          <h3 style="color: white; text-align: center;">Track Order
                          </h3>
                      </div>
                  </div>
              </div>
          </div>
      </section>
       <div class="container " style="margin-top:50px;">
          <center>
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="80%" HorizontalAlign="Center" Font-Bold="False" Font-Size="Medium" Height="150px">
                      <Columns>
                          <asp:TemplateField HeaderText="Sr. No.">
                               <ItemTemplate>
                                  <asp:Label ID="Label7" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Order Id">
                              <ItemTemplate>
                                  <asp:Label ID="Label1" runat="server" Text='<%# Eval("Order_Id") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Customer Name">
                              <ItemTemplate>
                                  <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Address">
                              <ItemTemplate>
                                  <asp:Label ID="Label3" runat="server" Text='<%# Eval("Address")+ ", " + Eval("City") + ", " + Eval("State") + ", " + Eval("Country")+ ", " + Eval("Zip") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Total">
                              <ItemTemplate>
                                  <asp:Label ID="Label4" runat="server" Text='<%# "₹"+ Eval("Total") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Status">
                              <ItemTemplate>
                                  <asp:Label ID="Label5" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                      </Columns>
                      <HeaderStyle BackColor="#CC0000" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                      <RowStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                  </asp:GridView>
              </center>
             
      </div>

   </section>
</asp:Content>

