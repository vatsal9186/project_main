<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="newProject.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br />
      <div class="dashboard">
        <div class="dashboard-header">
            Admin Dashboard
        </div>
        <div class="dashboard-cards">
            <div class="card">
                <div class="card-icon">🏠</div>
                <div class="card-title">Centers</div>
                <div class="card-value">0</div>
            </div>
            <div class="card">
                <div class="card-icon">👥</div>
                <div class="card-title">Users</div>
                <div class="card-value">7</div>
            </div>
            <div class="card">
                <div class="card-icon">🛒</div>
                <div class="card-title">Total Orders</div>
                <div class="card-value">4</div>
            </div>
            <div class="card">
                <div class="card-icon">⏳</div>
                <div class="card-title">Processing Orders</div>
                <div class="card-value">0</div>
            </div>
            <div class="card">
                <div class="card-icon">✔️</div>
                <div class="card-title">Delivered Orders</div>
                <div class="card-value">0</div>
            </div>
            <div class="card">
                <div class="card-icon">❌</div>
                <div class="card-title">Cancelled Orders</div>
                <div class="card-value">0</div>
            </div>
            <div class="card">
                <div class="card-icon">💼</div>
                <div class="card-title">Total Earnings</div>
                <div class="card-value">0</div>
            </div>
        </div>
    </div>
</asp:Content>
