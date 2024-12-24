<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="newProject.WebForm2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
    body {
        background: url('https://www.pexels.com/photo/architectural-photography-of-bridge-459203/') no-repeat center center fixed;
        background-size: cover;
        font-family: 'Arial', sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    
    #form1 {
        background: rgba(255, 255, 255, 0.9);
        padding: 40px;
        border-radius: 15px;
        box-shadow: 0 8px 24px rgba(0, 0, 0, 0.3);
        width: 400px;
        text-align: center;
        transition: transform 0.3s;
    }

    #form1:hover {
        transform: scale(1.02);
    }

    .label {
        color: #2c3e50;
        font-size: 26px;
        margin-bottom: 20px;
        display: block;
        font-weight: bold;
    }

    .textbox {
        width: 100%;
        padding: 12px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
        transition: border-color 0.3s;
    }

    .textbox:focus {
        border-color: #3498db;
        outline: none;
    }

    .error {
        color: red;
        font-size: 12px;
        margin-top: -10px;
        margin-bottom: 10px;
    }

    .checkbox {
        margin: 10px 0;
    }

    .button {
        background-color: #3498db;
        color: white;
        padding: 12px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
        transition: background-color 0.3s;
        margin-top: 10px;
    }

    .button:hover {
        background-color: #2980b9;
    }

    .footer {
        margin-top: 15px;
        font-size: 14px;
        color: #555;
    }

    .footer a {
        color: #3498db;
        text-decoration: none;
        transition: color 0.3s;
    }

    .footer a:hover {
        color: #2980b9;
    }
</style>
    <script>
        function validateForm() {
            var username = document.getElementById('<%= TextBox1.ClientID %>').value;
            var password = document.getElementById('<%= TextBox2.ClientID %>').value;
            var usernameError = document.getElementById('usernameError');
            var passwordError = document.getElementById('passwordError');
            var isValid = true;

            usernameError.innerText = "";
            passwordError.innerText = "";

            if (username === "") {
                usernameError.innerText = "Username is required.";
                isValid = false;
            }
            if (password === "") {
                passwordError.innerText = "Password is required.";
                isValid = false;
            }
            return isValid;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" onsubmit="return validateForm();">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="Label1" runat="server" CssClass="label" Text="Admin Login"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Placeholder="Enter Username"></asp:TextBox>
                <span id="usernameError" class="error"></span>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" TextMode="Password" Placeholder="Enter Password"></asp:TextBox>
                <span id="passwordError" class="error"></span>
                <%--<asp:CheckBox ID="CheckBox1" runat="server" CssClass="checkbox" Text="Stay Signed in" />--%>
                <asp:Button ID="Button1" runat="server" CssClass="button" Text="Submit" OnClick="Button1_Click1" />
                <%--<asp:Button ID="Button2" runat="server" CssClass="button" Text="Add New Account" OnClick="Button2_Click"  />--%>
               <%-- <div class="footer">
                  
                    <p>a. <a href="admin.aspx">Click here</a></p>
                </div>--%>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
