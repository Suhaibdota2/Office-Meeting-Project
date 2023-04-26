<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" enableEventValidation="false" CodeBehind="meetingroom.aspx.cs" Inherits="Homepage.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
<%--       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script>
    $(function () {

        $("#form1").submit(function (event) {
            event.preventDefault();

            //get the form data
            var data = {
                service_id: 'service_na0f23m',
                template_id: 'contact_form',
                user_id: 'dW7mO1WZ3t6oxtp0G',
                template_params: {
                    'from_name': 'kauhal',
                    'to_name': 'sahil',
                    //'email_id': 'saud963361@gmail.com',
                    'message': 'https://meet.google.com/hrw-vprb-zpx'
                }
            };

            // process the form
            $.ajax('https://api.emailjs.com/api/v1.0/email/send', {
                type: 'POST',
                data: JSON.stringify(data),
                contentType: 'application/json'
            }).done(function () {
                alert('Your mail is sent!');
            }).fail(function (error) {
                alert('Oops... ' + JSON.stringify(error));
            });
        });
    });
</script>--%>
        <div class="row">

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
                           <h3>Book Meeting</h3>
                            <h3>
                                <asp:Label ID="Label1" runat="server" Text="Welcome"></asp:Label>
                                <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
                            </h3>
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
                         <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Room No"></asp:TextBox>
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
                       <%-- <asp:Button ID="Button2" runat="server" Text="Book Now" OnClick="Button2_Click" />
                        &nbsp;<asp:Button ID="Button3" runat="server"  Text="Logout" OnClick="Button3_Click" />--%>
                         <asp:Button ID="Button2" runat="server" Text="Book Now" OnClick="Button2_Click" />
                         <asp:Button ID="Button3" runat="server" Text="Logout" OnClick="Button3_Click1" />
                            <%--<input type="submit" value="Book Online" />--%>
                           <%-- <div>
                                <form id="form1">
                                    <div>
                                        <input type="submit" value="Book Online" />
                                    </div>
                                </form>
                            </div>--%>
                        &nbsp;</div>
                         <br />
                         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                             <Columns>
                                 <asp:BoundField DataField="Empname" HeaderText="Empname" SortExpression="Empname" />
                                 <asp:BoundField DataField="Roomno" HeaderText="Roomno" SortExpression="Roomno" />
                                 <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                                 <asp:BoundField DataField="BDate" HeaderText="BDate" SortExpression="BDate" />
                             </Columns>
                             <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                             <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                             <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                             <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                             <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                             <SortedAscendingCellStyle BackColor="#FFF1D4" />
                             <SortedAscendingHeaderStyle BackColor="#B95C30" />
                             <SortedDescendingCellStyle BackColor="#F1E5CE" />
                             <SortedDescendingHeaderStyle BackColor="#93451F" />
                         </asp:GridView>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [meeting]"></asp:SqlDataSource>
                         <br /><br />
                         &nbsp;</div>
                  </div>
                    
                </div>

            </div>

            </div>
        </div>
    </div>

</asp:Content>
