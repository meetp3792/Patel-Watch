<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_master.Master" AutoEventWireup="true" CodeBehind="update-order.aspx.cs" Inherits="Patel02.admin.update_order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
 <main>
              <div class="container-fluid px-4">
                  <h1 class="mt-4">Update Category</h1>
                  <ol class="breadcrumb mb-4">
                      <li class="breadcrumb-item"><a href="index.aspx">Dashboard</a></li>
                      <li class="breadcrumb-item active">Update Category</li>
                  </ol>
                  <div class="card mb-4">
                      <div class="card-body">

                          <form method="">
                              <div class="row">

                                  <div class="col-4">Order ID</div>
                                  <div class="col-6">
                                      <asp:TextBox ID="order_id" runat="server" class="form-control" disabled></asp:TextBox>
                                      <%--<input type="text" value="order_id" name="o_id" class="form-control" disabled>--%>
                                  </div>

                                  <div class="col-4" style="margin-top:10px;">Customer Name</div>
                                  <div class="col-6" style="margin-top:10px;">
                                      <asp:TextBox ID="name" runat="server" class="form-control" disabled></asp:TextBox>
                                      <%--<input type="text" value="name" name="name" class="form-control" disabled>--%>

                                  </div>

                                  <div class="col-4" style="margin-top:10px;">Payment</div>
                                  <div class="col-6" style="margin-top:10px;">
                                      <asp:TextBox ID="payment" runat="server" class="form-control" disabled></asp:TextBox>
                                      <%--<input type="text" value="payment" name="payment" class="form-control" disabled>--%>
                                  </div>

                                  <div class="col-4" style="margin-top:10px;">Status</div>
                                  <div class="col-6" style="margin-top:10px;">
                                      <asp:DropDownList ID="ddlStatus" runat="server" class="form-control">
                                          <asp:ListItem>Panding</asp:ListItem>
                                          <asp:ListItem>Confirmed</asp:ListItem>
                                          <asp:ListItem>Out for Delivery</asp:ListItem>
                                          <asp:ListItem>Delivered</asp:ListItem>
                                      </asp:DropDownList>
                                      <%--<select name="status" id="status" class="form-control" required>

                                          <option value="status" selected>
                                              status
                                          </option>
                                          <option value="Panding">Panding</option>
                                          <option value="Confirmed">Confirmed</option>
                                          <option value="Out for Delivery">Out for Delivery</option>
                                          <option value="Delivered">Delivered</option>
                                          <option value="Cancled">Cancled</option>
                                      </select>--%>
                                  </div>
                              </div>

                              <div class="row" style="margin-left:500px; margin-top:20px">
                                  <div class="col-2">
                                      <asp:LinkButton ID="lbtnUpdate" runat="server" class="btn btn-primary" OnClick="lbtnUpdate_Click">Update</asp:LinkButton>
                                      <%--<button type="submit" name="submit" class="btn btn-primary">Update</button>--%>

                                  </div>
                              </div>

                          </form>

                      </div>
                  </div>
              </div>
          </main></asp:Content>

