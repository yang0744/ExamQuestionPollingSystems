<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="results.aspx.cs" Inherits="Online_Quiz.results" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <h2>Results</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="QuestionID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="QuestionID" HeaderText="Question" />
            <asp:BoundField DataField="CorrectAnswer" HeaderText="CorrectAnswer" />
            <asp:BoundField DataField="UserAnswer" HeaderText="YourAnswer" />
            <asp:BoundField DataField="Result" HeaderText="Result" />
        </Columns>
    </asp:GridView>
    <br />
&nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineQuizConnectionString1 %>" SelectCommand="SELECT [QuestionID], [Title], [Answer1], [Answer2], [Answer3], [Answer4], [CorrectAnswer], [AnswerExplanation], [QuestionOrder] FROM [Question]"></asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="QuestionID" DataSourceID="SqlDataSource1" Height="50px" Width="125px" Visible="False">
        <Fields>
            <asp:BoundField DataField="QuestionID" HeaderText="QuestionID" InsertVisible="False" ReadOnly="True" SortExpression="QuestionID" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Answer1" HeaderText="Answer1" SortExpression="Answer1" />
            <asp:BoundField DataField="Answer2" HeaderText="Answer2" SortExpression="Answer2" />
            <asp:BoundField DataField="Answer3" HeaderText="Answer3" SortExpression="Answer3" />
            <asp:BoundField DataField="Answer4" HeaderText="Answer4" SortExpression="Answer4" />
            <asp:BoundField DataField="CorrectAnswer" HeaderText="CorrectAnswer" SortExpression="CorrectAnswer" />
            <asp:BoundField DataField="AnswerExplanation" HeaderText="AnswerExplanation" SortExpression="AnswerExplanation" />
            <asp:BoundField DataField="QuestionOrder" HeaderText="QuestionOrder" SortExpression="QuestionOrder" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="LabelError" runat="server" ForeColor="#FF3300" Text="*"></asp:Label>
<br />
<asp:HyperLink ID="HyperLinkGoBackToMainMenu" runat="server" NavigateUrl="~/FrmDefaultSecond.aspx">Go back to main menu</asp:HyperLink>
    <br />
    <br />
    <asp:Button ID="btnSendEmail" runat="server" OnClick="btnSendEmail_Click" Text="Send Email" />
    <br />
</asp:Content>
