
<%--



<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buynow.aspx.cs" Inherits="newProject.Buynow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Information</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        #form1 {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: auto;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        p {
            margin: 15px 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        label {
            font-weight: bold;
            color: #555;
        }

        input[type="text"] {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 60%;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus {
            border-color: #007bff;
            outline: none;
        }

        .submit-button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
            display: block;
            width: 100%;
        }

        .submit-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>User Information</h1>
            <p>
                <label for="TextBox1">Name:</label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p>
                <label for="TextBox2">Mobile no:</label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </p>
            <p>
                <label for="TextBox3">Email id:</label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </p>
          
            Address:<label class="textarea">
	 <p style="margin-left:230px ; width:900px">
		  <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" ></asp:TextBox>
	</p>
</label>
            <asp:Button ID="SubmitButton" runat="server" Text="Submit" CssClass="submit-button" />
        </div>
    </form>
</body>
</html>--%>



<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buynow.aspx.cs" Inherits="newProject.Buynow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Information</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        #form1 {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            max-width: 600px;
            width: 100%;
            text-align: center;
            transition: transform 0.3s ease-in-out;
        }

        #form1:hover {
            transform: scale(1.02);
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
            font-size: 28px;
        }

        p {
            margin: 20px 0;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }

        label {
            font-weight: bold;
            color: #555;
            margin-bottom: 8px;
        }

        input[type="text"], textarea {
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 100%;
            transition: border-color 0.3s ease-in-out;
            box-sizing: border-box;
            font-size: 16px;
        }

        input[type="text"]:focus, textarea:focus {
            border-color: #007bff;
            outline: none;
        }

        textarea {
            resize: vertical;
            height: 100px;
        }

        .submit-button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 15px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 18px;
            margin-top: 30px;
            width: 100%;
            transition: background-color 0.3s ease-in-out;
        }

        .submit-button:hover {
            background-color: #0056b3;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Order Information</h1>
            <div class="form-group">
                <label for="TextBox1">Name:</label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TextBox2">Mobile no:</label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TextBox3">Email id:</label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TextBox4">Address:</label>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>
            <asp:Button ID="SubmitButton" runat="server" Text="Submit" CssClass="submit-button" OnClick="SubmitButton_Click" />
            <br />
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="280px">
             <%-- FEEDBACK FORM EXAMPLE START --%>
	<div>
		<h4 style="margin-left:10px">DO YOU WANT TO GIVE FEEDBACK?</h4>
    
		<%--<asp:Button ID="Button1" runat="server" Text="Button" style="margin-left:620px" OnClick="Button1_Click"/>--%>
		<label class="textarea">
 <p style="margin-left:10px">
	  <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
</p>
		<p style="margin-left:10px">
            
        </p>
		</label>
	</div>
	<br />
	<%-- FEEDBACK FORM  END--%>
            <asp:Button ID="Button1" runat="server" Text="Button" CssClass="submit-button" style="margin-bottom:10px" OnClick="Button1_Click"/>
        </asp:Panel>

    </form>
    <p>
        &nbsp;</p>
</body>
</html>
