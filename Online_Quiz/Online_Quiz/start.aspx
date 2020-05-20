<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="start.aspx.cs" Inherits="Online_Quiz.start" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <h2>Start</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        You are about to start the quiz. the quiz contains MCQ&#39;s. complete each question from the drop down list box and click next for next question to appear. All the best!</p>
    <p>
        <asp:Button ID="btnStartQuiz" runat="server" Text="Start quiz" OnClick="btnStartQuiz_Click" />
    </p>
</asp:Content>
