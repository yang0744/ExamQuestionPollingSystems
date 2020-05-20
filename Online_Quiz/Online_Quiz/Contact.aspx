<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Online_Quiz.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Your contact page.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
            <p>&nbsp;</p>
        </header>
        <p>
            <span class="label">Main&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; </span>+604 - 2211 800
        </p>
        <p>
            <span class="label">After Hours&nbsp; :&nbsp;&nbsp;&nbsp; </span>1300 - 88 - 2525
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
            <p>&nbsp;</p>
        </header>
        <p>
            <span class="label">Support&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; </span><span><a href="mailto:Support@example.com">Support@example.com</a></span>
        </p>
        <p>
            <span class="label">Marketing&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; </span><span><a href="mailto:Marketing@example.com">Marketing@example.com</a></span>
        </p>
        <p>
            <span class="label">General&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; </span><span><a href="mailto:General@example.com">General@example.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
            <p>&nbsp;</p>
        </header>
        <p>
            Krystal Boy       11900, Bryan Lebus.</p>
    </section>
</asp:Content>