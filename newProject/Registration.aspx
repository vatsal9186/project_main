<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="newProject.Registration" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <style>
        body {
            background-color: #e8f0fe;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        #form1 {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            width: 450px;
            text-align: center;
        }
        .label {
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 30px;
            color: #2c3e50;
        }
        .textbox {
            width: 100%;
            padding: 12px;
            margin: 12px 0;
            border: 1px solid #bdc3c7;
            border-radius: 10px;
            box-sizing: border-box;
            font-size: 16px;
            color: #2c3e50;
        }
        .button {
            background-color: #3498db;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            width: 100%;
            font-size: 18px;
            margin-top: 20px;
        }
        .button:hover {
            background-color: #2980b9;
        }
        .error {
            color: red;
            font-size: 14px;
            margin-top: -8px;
            margin-bottom: 10px;
        }
    </style>
    <script>
        function validateForm() {
            var isValid = true;
            var username = document.getElementById('<%= TextBox1.ClientID %>').value.trim();
            var phoneNumber = document.getElementById('<%= TextBox2.ClientID %>').value.trim();
            var email = document.getElementById('<%= TextBox3.ClientID %>').value.trim();
            var password = document.getElementById('<%= TextBox4.ClientID %>').value.trim();

            document.getElementById('TextBox1Error').innerText = "";
            document.getElementById('TextBox2Error').innerText = "";
            document.getElementById('TextBox3Error').innerText = "";
            document.getElementById('TextBox4Error').innerText = "";

            if (username === "" || username.length > 20) {
                document.getElementById('TextBox1Error').innerText = "Username is required and must be 20 characters max.";
                isValid = false;
            }
            if (phoneNumber === "" || !/^\d{10}$/.test(phoneNumber)) {
                document.getElementById('TextBox2Error').innerText = "Phone number is required and must be exactly 10 digits.";
                isValid = false;
            }
            if (email === "" || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
                document.getElementById('TextBox3Error').innerText = "A valid email is required.";
                isValid = false;
            }
            if (password === "") {
                document.getElementById('TextBox4Error').innerText = "Password is required.";
                isValid = false;
            }

            return isValid;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" onsubmit="return validateForm();">
        <div>
            &nbsp;&nbsp;&nbsp;
            <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="Label1" runat="server" CssClass="label" Text="Registration Form"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Placeholder="Enter Username"></asp:TextBox>
                <span id="TextBox1Error" class="error"></span>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Phone" CssClass="textbox" Placeholder="Enter Phone Number"></asp:TextBox>
                <span id="TextBox2Error" class="error"></span>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" Placeholder="Enter Email"></asp:TextBox>
                <span id="TextBox3Error" class="error"></span>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" CssClass="textbox" Placeholder="Enter Password"></asp:TextBox>
                <span id="TextBox4Error" class="error"></span>
                <asp:Button ID="Button1" runat="server" CssClass="button" Text="Submit" OnClick="Button1_Click" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>










<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="newProject.Registration" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <style>
        body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        #form1 {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }
        .label {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #333;
        }
        .textbox {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .button {
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }
        .button:hover {
            background-color: #0056b3;
        }
        .error {
            color: red;
            font-size: 12px;
            margin-top: -10px;
            margin-bottom: 10px;
        }
    </style>
    <script>
        function validateForm() {
            var isValid = true;
            var fields = ["TextBox1", "TextBox2", "TextBox3", "TextBox4"];
            fields.forEach(function (field) {
                var element = document.getElementById(field);
                var errorElement = document.getElementById(field + 'Error');
                if (element.value.trim() === "") {
                    errorElement.innerText = "This field is required.";
                    isValid = false;
                } else {
                    errorElement.innerText = "";
                }
            });
            return isValid;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" onsubmit="return validateForm();">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="Label1" runat="server" CssClass="label" Text="Registration Form"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Placeholder="Enter Username"></asp:TextBox>
                <span id="TextBox1Error" class="error"></span>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Phone" CssClass="textbox" Placeholder="Enter Phone Number"></asp:TextBox>
                <span id="TextBox2Error" class="error"></span>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" Placeholder="Enter Email"></asp:TextBox>
                <span id="TextBox3Error" class="error"></span>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" CssClass="textbox" Placeholder="Enter Password"></asp:TextBox>
                <span id="TextBox4Error" class="error"></span>
                <asp:Button ID="Button1" runat="server" CssClass="button" Text="Submit" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>--%>




<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="newProject.Registration" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <style>
        body {
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        #form1 {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }
        .label {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #333;
        }
        .textbox {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .button {
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }
        .button:hover {
            background-color: #0056b3;
        }
        .error {
            color: red;
            font-size: 12px;
            margin-top: -10px;
            margin-bottom: 10px;
        }
    </style>
    <script>
        function validateForm() {
            var isValid = true;
            var username = document.getElementById('<%= TextBox1.ClientID %>').value.trim();
            var phoneNumber = document.getElementById('<%= TextBox2.ClientID %>').value.trim();
            var email = document.getElementById('<%= TextBox3.ClientID %>').value.trim();
            var password = document.getElementById('<%= TextBox4.ClientID %>').value.trim();

            document.getElementById('TextBox1Error').innerText = "";
            document.getElementById('TextBox2Error').innerText = "";
            document.getElementById('TextBox3Error').innerText = "";
            document.getElementById('TextBox4Error').innerText = "";

            if (username === "" || username.length > 20) {
                document.getElementById('TextBox1Error').innerText = "Username is required and must be 20 characters max.";
                isValid = false;
            }
            if (phoneNumber === "" || !/^\d{10}$/.test(phoneNumber)) {
                document.getElementById('TextBox2Error').innerText = "Phone number is required and must be exactly 10 digits.";
                isValid = false;
            }
            if (email === "" || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
                document.getElementById('TextBox3Error').innerText = "A valid email is required.";
                isValid = false;
            }
            if (password === "") {
                document.getElementById('TextBox4Error').innerText = "Password is required.";
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
                <asp:Label ID="Label1" runat="server" CssClass="label" Text="Registration Form"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Placeholder="Enter Username"></asp:TextBox>
                <span id="TextBox1Error" class="error"></span>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Phone" CssClass="textbox" Placeholder="Enter Phone Number"></asp:TextBox>
                <span id="TextBox2Error" class="error"></span>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" Placeholder="Enter Email"></asp:TextBox>
                <span id="TextBox3Error" class="error"></span>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" CssClass="textbox" Placeholder="Enter Password"></asp:TextBox>
                <span id="TextBox4Error" class="error"></span>
                <asp:Button ID="Button1" runat="server" CssClass="button" Text="Submit" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>--%>






<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="newProject.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration form</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Panel ID="Panel1" runat="server">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Registration Form"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="178px"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Number" Width="178px"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Width="178px"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="178px"></asp:TextBox>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Submit" Width="98px" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

        </asp:Panel>
    </form>
</body>
</html>--%>








<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="newProject.Registration" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <style>
        body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        #form1 {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }
        .label {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #333;
        }
        .textbox {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .button {
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }
        .button:hover {
            background-color: #0056b3;
        }
        .error {
            color: red;
            font-size: 12px;
            margin-top: -10px;
            margin-bottom: 10px;
        }
    </style>
    <script>
        function validateForm() {
            var isValid = true;
            var fields = ["TextBox1", "TextBox2", "TextBox3", "TextBox4"];
            fields.forEach(function(field) {
                var element = document.getElementById('<%= ' + field + '.ClientID %>');
                var errorElement = document.getElementById(field + 'Error');
                if (element.value.trim() === "") {
                    errorElement.innerText = "This field is required.";
                    isValid = false;
                } else {
                    errorElement.innerText = "";
                }
            });
            return isValid;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" onsubmit="return validateForm();">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="Label1" runat="server" CssClass="label" Text="Registration Form"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Placeholder="Enter Username"></asp:TextBox>
                <span id="TextBox1Error" class="error"></span>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Number" CssClass="textbox" Placeholder="Enter Phone Number"></asp:TextBox>
                <span id="TextBox2Error" class="error"></span>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" Placeholder="Enter Email"></asp:TextBox>
                <span id="TextBox3Error" class="error"></span>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" CssClass="textbox" Placeholder="Enter Password"></asp:TextBox>
                <span id="TextBox4Error" class="error"></span>
                <asp:Button ID="Button1" runat="server" CssClass="button" Text="Submit" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>--%>






