<%@ Page Title="Exam Management" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QuizProfile.aspx.cs" Inherits="Online_Quiz.QuizProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <h4>Quiz profile</h4>
    <p>
    <asp:Button ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" />
    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
    <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_BackTP" runat="server" PostBackUrl="~/TutorPage.aspx" Text="Back" CausesValidation="False" />
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p style="margin-left: 40px">
        Quiz&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;<asp:DropDownList ID="DropDownListQuizID" runat="server" Width="300px" DataSourceID="SqlDataSourceQuiz" DataTextField="Title" DataValueField="QuizID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceQuiz" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineQuizConnectionString1 %>" SelectCommand="SELECT * FROM [Quiz]"></asp:SqlDataSource>
    </p>
    <p style="margin-left: 40px">
        Quiz Title : <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTitle" runat="server" ControlToValidate="txtTitle" ErrorMessage="please enter title" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:Label ID="LabelMessage" runat="server" Text="*"></asp:Label>
    </p>
    <p style="margin-left: 40px">
        Course&nbsp;&nbsp;&nbsp;&nbsp; : <asp:DropDownList ID="DropDownListCourse" runat="server" Width="300px" DataSourceID="SqlDataSource1" DataTextField="CourseName" DataValueField="CourseID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineQuizConnectionString1 %>" SelectCommand="SELECT * FROM [Course]"></asp:SqlDataSource>
    </p>
</asp:Content>
