<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" enableEventValidation="false" CodeBehind="employeelogin.aspx.cs" Inherits="Homepage.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        <div class="row">
        <div class="col-md-6 mx-auto">

            <div class="card">
                <div class="card-body">
                    <div class="row">
                     <div class="col">
                        <center>
                            <img  width="150px" src="imgs/member.png" />
                        </center>
                     </div>
                  </div>

                    <div class="row">
                     <div class="col">
                        <center>
                           <h3>Employee Login</h3>
                        </center>
                     </div>
                  </div>

                     <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

             

                 <div style="max-width: 400px;">
            <h2 class="form-signin-heading">Login</h2>
            <asp:Label Text="Username" runat="server" AssociatedControlID="TextBox1" />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter Username" required="required" />
            <br />
            <asp:Label Text="Password" runat="server" AssociatedControlID="TextBox2" />
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ToolTip="Password must contain: Minimum 8 characters at-least 1 Alphabet and 1 Number"
                CssClass="form-control" placeholder="Enter Password" required="required" pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" />
            <br />
          
      
            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="Button1_Click1" />
        </div>

                     <div class="row">
                     <div class="col">
                     <div class="form-group">
                         <div class="d-grid gap-2">
                             <a href="register.aspx"><input  class="btn btn-info btn-block btn-lg"id="Button2" type="button" value="Register" /></a>
                         </div>
                        </div>
                     </div>
                  </div>


                </div>
            </div>
            <a href="Homepage.aspx">Back to Home</a>
            
            </div>
        </div>
    </div>
    
</asp:Content>
