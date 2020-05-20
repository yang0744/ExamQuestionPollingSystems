<%@ Page Title="Student Protal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentPage.aspx.cs" Inherits="Online_Quiz._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Welcome to the Student Protal</h1>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <p class="auto-style2" style="margin-left: 40px">
                Student able to Take the examinaton and Review the Result in this page.</p>
    <br />
&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="imgBtn_CM" runat="server" Height="232px" ImageUrl="~/Data_Source/Images/StartExam.png" PostBackUrl="~/StartExam.aspx" Width="205px" />
&nbsp; <asp:ImageButton ID="imgBtn_EM" runat="server" Height="232px" ImageUrl="~/Data_Source/Images/ViewResult.png" PostBackUrl="~/ViewResult.aspx" Width="205px" />
            &nbsp;&nbsp;<asp:ImageButton ID="imgBtn_SM" runat="server" Height="232px" ImageUrl="~/Data_Source/Images/SendMail.png" PostBackUrl="~/SendEmail.aspx" Width="205px" />
            <br />
    <br />
    <br />
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style2 {
            font-size: medium;
        }
    </style>
    </asp:Content>

