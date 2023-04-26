<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="Homepage.Adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
                <div class="card-body">
                    <div class="row">
                     <div class="col">
                        <center>
                            <img  width="140px" src="imgs/member.png" />
                        </center>
                     </div>
                  </div>

                    <div class="row">
                     <div class="col">
                        <center>
                           <h3>Admin Login</h3>
                        </center>
                     </div>
                  </div>

                     <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                    <div class="row">
                     <div class="col">
                         <label>Member ID</label>
                     <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                     <div class="row">
                     <div class="col">
                         <label>Password</label>
                     <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                     <div class="row">
                     <div class="col">
                     <div class="form-group">
                         <div class="d-grid gap-2">
                              <asp:Button class="btn btn-success btn-block"  ID="Button1" runat="server" Text="Login" />
                         </div>
                        </div>
                     </div>
                  </div>

                    


                </div>
            </div>
</asp:Content>
