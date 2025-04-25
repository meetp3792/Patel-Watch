<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_master.Master" AutoEventWireup="true" CodeBehind="manage-user.aspx.cs" Inherits="Patel02.admin.manage_user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
 <main>
              <div class="container-fluid px-4">
                  <h1 class="mt-4">Manage User</h1>
                  <ol class="breadcrumb mb-4">
                      <li class="breadcrumb-item"><a href="dashboard.aspx">Dashboard</a></li>
                      <li class="breadcrumb-item active">Manage User</li>
                  </ol>
                  <div class="card mb-4">
                      <div class="card-header">
                          <i class="fas fa-table me-1"></i>
                          User Details
                      </div>
                      <div class="card-body table-responsive">
                          <asp:GridView ID="userGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowCommand="userGridView_RowCommand" Width="80%">
                              <AlternatingRowStyle BackColor="#CCCCCC" />
                              <Columns>
                                  <asp:TemplateField HeaderText="Sr. No.">
                                      <ItemTemplate>
                                          <asp:Label ID="Label" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Id">
                                      <ItemTemplate>
                                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("User_Id") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Name">
                                      <ItemTemplate>
                                          <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Email">
                                      <ItemTemplate>
                                          <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Type">
                                      <ItemTemplate>
                                          <asp:Label ID="Label4" runat="server" Text='<%# Eval("User_Type") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Update">
                                      <ItemTemplate>
                                          <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("User_Id") %>' CommandName="cmd_update">Update</asp:LinkButton>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Delete">
                                      <ItemTemplate>
                                          <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("User_Id") %>' CommandName="cmd_delete">Delete</asp:LinkButton>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                              </Columns>
                              <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                              <FooterStyle BackColor="#CCCCCC" />
                              <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                              <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                              <RowStyle BorderStyle="Solid" HorizontalAlign="Center" VerticalAlign="Middle" />
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

