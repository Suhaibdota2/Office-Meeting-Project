<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="Homepage.demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
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
                    'from_name': 'hihihih',
                     'to_name': 'haud',
                    //'email_id': 'saud963361@gmail.com',
                    'message':'Hi how are you'
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
</script>
<body>
    <form id="form1">
        <div>
            <input type="submit" value="submit" />


        </div>
    </form>
</body>
</html>
