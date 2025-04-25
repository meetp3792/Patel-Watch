<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_master.Master" AutoEventWireup="true" CodeBehind="manage-product.aspx.cs" Inherits="Patel02.admin.manage_product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<main>
              <div class="container-fluid px-4">
                  <h1 class="mt-4">Manage Products</h1>
                  <ol class="breadcrumb mb-4">
                      <li class="breadcrumb-item"><a href="dashboard.aspx">Dashboard</a></li>
                      <li class="breadcrumb-item active">Manage Products</li>
                  </ol>
                  <div class="card mb-4">
                      <div class="card-header">
                          <i class="fas fa-table me-1"></i>
                          Product Details
                      </div>
                      <div class="card-body table-responsive">
                          <asp:GridView runat="server" ID="ProductsGridView" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="90%" OnRowCommand="ProductsGridView_RowCommand">
                              <AlternatingRowStyle BackColor="#CCCCCC" />
                              <Columns>
                                  <asp:TemplateField HeaderText="Sr. no.">
                                      <ItemTemplate>
                                          <asp:Label ID="Label1" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="P_Id">
                                      <ItemTemplate>
                                          <asp:Label ID="Label2" runat="server" Text='<%# Eval("P_Id") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="P_Name">
                                      <ItemTemplate>
                                          <asp:Label ID="Label3" runat="server" Text='<%# Eval("P_Name") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="P_Image">
                                      <ItemTemplate>
                                          <asp:Image ID="Image1" runat="server" Height="101px" ImageUrl='<%# Eval("P_Image") %>' Width="107px" />
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="P_Mrp">
                                      <ItemTemplate>
                                          <asp:Label ID="Label4" runat="server" Text='<%# Eval("P_Mrp") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="P_Price">
                                      <ItemTemplate>
                                          <asp:Label ID="Label5" runat="server" Text='<%# Eval("P_Price") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="P_Description">
                                      <ItemTemplate>
                                          <asp:Label ID="Label6" runat="server" Text='<%# Eval("P_Desc") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="C_Id">
                                      <ItemTemplate>
                                          <asp:Label ID="Label7" runat="server" Text='<%# Eval("C_Id") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Qty">
                                      <ItemTemplate>
                                          <asp:Label ID="Label8" runat="server" Text='<%# Eval("Qty") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Update">
                                      <ItemTemplate>
                                          <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("P_Id") %>' CommandName="cmd_update">Update</asp:LinkButton>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Delete">
                                      <ItemTemplate>
                                          <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("P_Id") %>' CommandName="cmd_delete">Delete</asp:LinkButton>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                              </Columns>
                              <FooterStyle BackColor="#CCCCCC" />
                              <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                              <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                              <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                              <SortedAscendingCellStyle BackColor="#F1F1F1" />
                              <SortedAscendingHeaderStyle BackColor="Gray" />
                              <SortedDescendingCellStyle BackColor="#CAC9C9" />
                              <SortedDescendingHeaderStyle BackColor="#383838" />
                          </asp:GridView>
                      </div>
                  </div>
              </div>
          </main></asp:Content>

