<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_master.Master" AutoEventWireup="true" CodeBehind="manage-orders.aspx.cs" Inherits="Patel02.admin.manage_orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
 <main>
              <div class="container-fluid px-4">
                  <h1 class="mt-4">Manage Orders</h1>
                  <ol class="breadcrumb mb-4">
                      <li class="breadcrumb-item"><a href="dashboard.aspx">Dashboard</a></li>
                      <li class="breadcrumb-item active">Manage Orders</li>
                  </ol>
                  <div class="card mb-4">
                      <div class="card-header">
                          <i class="fas fa-table me-1"></i>
                          Order Details
                      </div>
                      <div class="card-body table-responsive">
                          <asp:GridView ID="orderGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" OnRowCommand="orderGridView_RowCommand" Width="100%">
                              <AlternatingRowStyle BackColor="#CCCCCC" />
                              <Columns>
                                  <asp:TemplateField HeaderText="Sr. No.">
                                      <ItemTemplate>
                                          <asp:Label ID="Label" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Order_Id">
                                      <ItemTemplate>
                                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("Order_Id") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="User_Id">
                                      <ItemTemplate>
                                          <asp:Label ID="Label2" runat="server" Text='<%# Eval("User_Id") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Pre_Name">
                                      <ItemTemplate>
                                          <asp:Label ID="Label3" runat="server" Text='<%# Eval("Pre_Name") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Name">
                                      <ItemTemplate>
                                          <asp:Label ID="Label4" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Email">
                                      <ItemTemplate>
                                          <asp:Label ID="Label5" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Mobile">
                                      <ItemTemplate>
                                          <asp:Label ID="Label6" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Address">
                                      <ItemTemplate>
                                          <asp:Label ID="Label7" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="City">
                                      <ItemTemplate>
                                          <asp:Label ID="Label8" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Zip">
                                      <ItemTemplate>
                                          <asp:Label ID="Label9" runat="server" Text='<%# Eval("Zip") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="State">
                                      <ItemTemplate>
                                          <asp:Label ID="Label10" runat="server" Text='<%# Eval("State") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Country">
                                      <ItemTemplate>
                                          <asp:Label ID="Label11" runat="server" Text='<%# Eval("Country") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Payment">
                                      <ItemTemplate>
                                          <asp:Label ID="Label12" runat="server" Text='<%# Eval("Payment") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="P_Id : Qty">
                                      <ItemTemplate>
                                          <asp:Label ID="Label13" runat="server" Text='<%# Eval("P_Id_Qty") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Status">
                                      <ItemTemplate>
                                          <asp:Label ID="Label14" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Update">
                                      <ItemTemplate>
                                          <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Order_Id") %>' CommandName="cmd_update">Update</asp:LinkButton>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Delete">
                                      <ItemTemplate>
                                          <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Order_Id") %>' CommandName="cmd_delete">Delete</asp:LinkButton>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                              </Columns>
                              <FooterStyle BackColor="#CCCCCC" />
                              <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                              <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                              <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                              <SortedAscendingCellStyle BackColor="#F1F1F1" />
                              <SortedAscendingHeaderStyle BackColor="#808080" />
                              <SortedDescendingCellStyle BackColor="#CAC9C9" />
                              <SortedDescendingHeaderStyle BackColor="#383838" />
                          </asp:GridView>
                      </div>
                  </div>
              </div>
          </main></asp:Content>

