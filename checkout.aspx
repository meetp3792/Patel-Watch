<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="Patel02.checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        body {
            background-color: white;
            color: black;
        }
        .banner-secondary {
            background-color: gray !important;
        }
        .banner-caption h3 {
            color: black !important;
        }
        .list-group-item {
            background-color: white !important;
            color: black !important;
            border-color: gray !important;
        }
        .form-control {
            background-color: #f8f9fa !important;
            color: black !important;
            border: 1px solid gray !important;
        }
        .blue-button a, .blue-button input {
            background-color: gray !important;
            color: white !important;
            border: none;
            padding: 10px 20px;
            text-decoration: none;
        }
        .blue-button a:hover, .blue-button input:hover {
            background-color: black !important;
            color: white !important;
        }
        label {
            color: black !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <section class="banner banner-secondary" id="top" style="background-color: rgb(37, 231, 53);">
      <div class="container">
          <div class="row">
              <div class="col-md-10 col-md-offset-1">
                  <div class="banner-caption">
                      <h3 style="color: white; text-align: center;">Checkout</h3>
                  </div>
              </div>
          </div>
      </div>
  </section>

  <main>
      <section class="featured-places">
          <div class="container">
              <div class="row">
                  <div class="col-lg-4 col-md-5 pull-right">
                      <ul class="list-group">
                          <li class="list-group-item">
                              <div class="row">
                                  <div class="col-xs-6">
                                      <em>Sub-total</em>
                                  </div>

                                  <div class="col-xs-6 text-right">
                                      <strong>₹ <asp:Label ID="lblSubtotal" runat="server" Text="Label"></asp:Label></strong>
                                  </div>
                              </div>
                          </li>

                          <li class="list-group-item">
                              <div class="row">
                                  <div class="col-xs-6">
                                      <em>Extra</em>
                                  </div>

                                  <div class="col-xs-6 text-right">
                                      <strong>₹ 0</strong>
                                  </div>
                              </div>
                          </li>

                          <li class="list-group-item">
                              <div class="row">
                                  <div class="col-xs-6">
                                      <em>Tax 0%</em>
                                  </div>

                                  <div class="col-xs-6 text-right">
                                      <strong>₹ 0</strong>
                                  </div>
                              </div>
                          </li>

                          <li class="list-group-item">
                              <div class="row">
                                  <div class="col-xs-6">
                                      <b>Total</b>
                                  </div>

                                  <div class="col-xs-6 text-right">
                                      <strong>₹ <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label></strong>
                                  </div>
                              </div>
                          </li>

                      </ul>
                  </div>

                  <div class="col-lg-8 col-md-7">
                      <form action="" method="">
                          <input type="hidden" name="total" value="">
                          <div class="row">
                              <div class="col-sm-6 col-xs-12">
                                  <div class="form-group">
                                      <label class="control-label">Title:</label>
                                      <asp:DropDownList ID="ddlTitle" runat="server" class="form-control" >
                                          <asp:ListItem>--- Select ---</asp:ListItem>
                                          <asp:ListItem>Mr.</asp:ListItem>
                                          <asp:ListItem>Mrs.</asp:ListItem>
                                      </asp:DropDownList>
                                      <%--<select class="form-control" name="title"
                                          data-msg-required="This field is required.">
                                          <option value="">-- Select --</option>
                                          <option value="dr">Dr.</option>
                                          <option value="miss">Miss</option>
                                          <option value="mr">Mr.</option>
                                          <option value="mrs">Mrs.</option>
                                          <option value="ms">Ms.</option>
                                          <option value="other">Other</option>
                                          <option value="prof">Prof.</option>
                                          <option value="rev">Rev.</option>
                                      </select>--%>
                                  </div>
                              </div>
                              <div class="col-sm-6 col-xs-12">
                                  <div class="form-group">
                                      <label class="control-label">Name:</label>
                                      <asp:TextBox ID="txtName" runat="server" class="form-control"></asp:TextBox>
                                      <%--<input type="text" class="form-control" name="name">--%>
                                  </div>
                              </div>
                          </div>
                          <div class="row">
                              <div class="col-sm-6 col-xs-12">
                                  <div class="form-group">
                                      <label class="control-label">Email:</label>
                                      <asp:TextBox ID="txtEmail" runat="server" class="form-control"></asp:TextBox>
                                      <%--<input type="text" class="form-control" name="email">--%>
                                  </div>
                              </div>
                              <div class="col-sm-6 col-xs-12">
                                  <div class="form-group">
                                      <label class="control-label">Phone:</label>
                                      <asp:TextBox ID="txtPhone" runat="server" class="form-control"></asp:TextBox>
                                      <%--<input type="text" class="form-control" name="phone">--%>
                                  </div>
                              </div>
                          </div>
                          <div class="row">
                              <div class="col-sm-12 col-xs-12">
                                  <div class="form-group">
                                      <label class="control-label">Address:</label>
                                      <asp:TextBox ID="txtAddress" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                                      <%--<input type="text" class="form-control" name="address1">--%>
                                  </div>
                              </div>
                              <%--<div class="col-sm-6 col-xs-12">
                                  <div class="form-group">
                                      <label class="control-label">Address 2:</label>
                                      <input type="text" class="form-control" name="address2">
                                  </div>
                              </div>--%>
                          </div>
                          <div class="row">
                              <div class="col-sm-6 col-xs-12">
                                  <div class="form-group">
                                      <label class="control-label">City:</label>
                                      <asp:TextBox ID="txtCity" runat="server" class="form-control"></asp:TextBox>
                                      <%--<input type="text" class="form-control" name="city">--%>
                                  </div>
                              </div>
                              <div class="col-sm-6 col-xs-12">
                                  <div class="form-group">
                                      <label class="control-label">State:</label>
                                      <asp:TextBox ID="txtState" runat="server" class="form-control"></asp:TextBox>
                                      <%--<input type="text" class="form-control" name="state">--%>
                                  </div>
                              </div>
                          </div>
                          <div class="row">
                              <div class="col-sm-6 col-xs-12">
                                  <div class="form-group">
                                      <label class="control-label">Zip:</label>
                                      <asp:TextBox ID="txtZip" runat="server" class="form-control"></asp:TextBox>
                                      <%--<input type="text" class="form-control" name="zip">--%>
                                  </div>
                              </div>
                              <div class="col-sm-6 col-xs-12">
                                  <div class="form-group">
                                      <label class="control-label">Country:</label>
                                      <asp:DropDownList ID="ddlCountry" runat="server" class="form-control">
                                          <asp:ListItem>--- Select ---</asp:ListItem>
                                          <asp:ListItem>India</asp:ListItem>
                                          <asp:ListItem>Australia</asp:ListItem>
                                      </asp:DropDownList>
                                      <%--<select class="form-control" name="country">
                                          <option value="">-- Select --</option>
                                          <option value="India">India</option>
                                          <option value="Australia">Australia</option>
                                          <option value="United-States">United States</option>
                                      </select>--%>
                                  </div>
                              </div>
                          </div>

                          <div class="row">
                              <div class="col-sm-6 col-xs-12">
                                  <div class="form-group">
                                      <label class="control-label">Payment method</label>
                                      <asp:DropDownList ID="ddlPayment" runat="server" class="form-control">
                                          <asp:ListItem>--- Select ---</asp:ListItem>
                                          <asp:ListItem>COD</asp:ListItem>
                                          <asp:ListItem>UPI</asp:ListItem>
                                      </asp:DropDownList>
                                     <%-- <select class="form-control" name="payment">
                                          <option value="">-- Select --</option>
                                          <option value="cod">Cash On Delivery</option>
                                          <option value="bank" disabled>Bank account</option>
                                          <option value="paypal" disabled>PayPal</option>
                                      </select>--%>
                                  </div>
                              </div>

                          </div>

                          <div class="form-group">
                              <label class="control-label">
                                  <%--<input type="checkbox" name="terms">--%>
                                  <asp:CheckBox ID="cbTerms" runat="server" />
                                  I agree with the <a href="terms.aspx" target="_blank">Terms &amp; Conditions</a>
                              </label>
                          </div>

                          <div class="clearfix">
                              <div class="blue-button pull-left">
                                  <a href="cart.aspx">Back</a>
                              </div>

                              <div class="blue-button pull-right">
                                  <asp:LinkButton ID="lbtnFinish" runat="server" OnClick="lbtnFinish_Click">Finish</asp:LinkButton>
                                  <%--<input type="submit" name="submit" value="Finishh" />--%>
                              </div>
                          </div>
                      </form>
                  </div>
              </div>

          </div>
      </section>
  </main>
 </asp:Content>