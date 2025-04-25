<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_master.Master" AutoEventWireup="true" CodeBehind="update-user.aspx.cs" Inherits="Patel02.admin.update_user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<main>
               <div class="container-fluid px-4">
                   <h1 class="mt-4">Update User</h1>
                   <ol class="breadcrumb mb-4">
                       <li class="breadcrumb-item"><a href="index.aspx">Dashboard</a></li>
                       <li class="breadcrumb-item active">Update User</li>
                   </ol>
                   <div class="card mb-4">
                       <div class="card-body">

                           <form method="">
                               <div class="row">

                                   <div class="col-4">User ID</div>
                                   <div class="col-6">
                                       <asp:TextBox ID="user_id" runat="server" class="form-control" disabled></asp:TextBox>
                                       <%--<input type="text" value="user_id" name="userid" class="form-control" required>--%>

                                   </div>

                                   <div class="col-4" style="margin-top:10px;">User Name</div>
                                   <div class="col-6" style="margin-top:10px;">
                                       <asp:TextBox ID="name" runat="server" class="form-control" disabled></asp:TextBox>
                                       <%--<input type="text" value="name" name="username" class="form-control" required>--%>
                                   </div>

                                   <div class="col-4" style="margin-top:10px;">User Email</div>
                                   <div class="col-6" style="margin-top:10px;">
                                       <asp:TextBox ID="email" runat="server" class="form-control" disabled></asp:TextBox>
                                       <%--<input type="email" value="email" name="useremail" class="form-control" required>--%>
                                   </div>

                                   <div class="col-4" style="margin-top:10px;">User Type</div>
                                   <div class="col-6" style="margin-top:10px;">
                                       <asp:DropDownList ID="ddlUserType" runat="server" class="form-control">
                                           <asp:ListItem >user</asp:ListItem>
                                           <asp:ListItem>admin</asp:ListItem>
                                       </asp:DropDownList>
                                       <%--<input type="text" value="user_type" name="usertype" class="form-control" required>--%>
                                   </div>

                               </div>

                               <div class="row" style="margin-left:500px; margin-top:20px">
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

