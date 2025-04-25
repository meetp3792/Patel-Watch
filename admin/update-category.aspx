<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_master.Master" AutoEventWireup="true" CodeBehind="update-category.aspx.cs" Inherits="Patel02.admin.update_category" %>
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

                          <div class="col-4">Category ID</div>
                          <div class="col-6">
                              <%--<input type="text"value="c_id" name="c_id" class="form-control" disabled>--%>
                              <asp:TextBox ID="c_id" runat="server" class="form-control" disabled></asp:TextBox>
                          </div>

                          <div class="col-4" style="margin-top: 10px;">Category Name</div>
                          <div class="col-6" style="margin-top: 10px;">
                              <%--<input type="text"value="c_name" name="c_name" class="form-control" required>--%>
                              <asp:TextBox ID="c_name" runat="server" class="form-control"></asp:TextBox>
                          </div>

                          <div class="col-4" style="margin-top: 10px;">Category Image</div>
                          <div class="col-6" style="margin-top: 10px;">
                              <%--<input type="file" value="c_img" name="c_img" class="form-control" required>--%>
                              <asp:FileUpload ID="c_img" runat="server" class="form-control" />
                          </div>

                      </div>

                      <div class="row" style="margin-left: 500px; margin-top: 20px">
                          <div class="col-2">
                              <%--<button type="submit" name="submit" class="btn btn-primary">Update</button>--%>
                              <asp:LinkButton ID="btnUpdate" runat="server" class="btn btn-primary" OnClick="btnUpdate_Click">Update</asp:LinkButton>
                          </div>
                      </div>

                  </form>

              </div>
          </div>
      </div>
  </main></asp:Content>

