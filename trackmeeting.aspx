<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="trackmeeting.aspx.cs" Inherits="Homepage.trackmeeting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
                     <div class="col">
                         <label>Username </label>
                     <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                     <div class="row">
                     <div class="col">
                         <label>Room No</label>
                     <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Room No" >
                             <%--OnTextChanged="TextBox2_TextChanged"--%>
                         </asp:TextBox>
                        </div>
                     </div>
                  </div>

                     <div class="row">
                     <div class="col">
                         <label>Booking Time</label>
                     <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Time" TextMode="DateTime"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                     <div class="row">
                     <div class="col">
                         <label>Booking Date</label>
                     <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                   <div class="row">
                     <div class="col">
                     <div class="form-group">
                         <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click1"  />
                         &nbsp;&nbsp;  <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                         <br />
                         <br />
                         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                             <Columns>
                                 <asp:BoundField DataField="Empname" HeaderText="Empname" SortExpression="Empname" />
                                 <asp:BoundField DataField="Roomno" HeaderText="Roomno" SortExpression="Roomno" />
                                 <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                                 <asp:BoundField DataField="BDate" HeaderText="BDate" SortExpression="BDate" />
                             </Columns>
                         </asp:GridView>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [meeting]"></asp:SqlDataSource>
                         <br />
                         <br />
                         </div>
                         </div>
                       </div>

</asp:Content>
