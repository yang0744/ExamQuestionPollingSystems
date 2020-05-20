<%@ Page Title="Question Management" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addQuestion.aspx.cs" Inherits="Online_Quiz.addQuestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <h3>Add Questions</h3>
<p>
    <asp:Button ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" />
    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" CausesValidation="False" />
    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
    <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_BackTP" runat="server" PostBackUrl="~/TutorPage.aspx" Text="Back" CausesValidation="False" />
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Question ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
        <asp:DropDownList ID="DropDownListQuestionID" runat="server" Height="16px" Width="175px" DataSourceID="LinqDataSourceQuestion" DataTextField="Title" DataValueField="QuestionID" OnSelectedIndexChanged="DropDownListQuestionID_SelectedIndexChanged" OnTextChanged="DropDownListQuestionID_TextChanged" EnableViewState="true" AutoPostBack="true">
        </asp:DropDownList>
        <asp:LinqDataSource ID="LinqDataSourceQuestion" runat="server" ContextTypeName="Online_Quiz.DataClassesOnlineQuizDataContext" EntityTypeName="" TableName="Questions">
        </asp:LinqDataSource>
        <asp:Label ID="LabelError" runat="server" Font-Size="Larger" ForeColor="#006600" Text="*"></asp:Label>
    </p>
    <p>
        Question Title&nbsp;&nbsp;&nbsp; : </p>
    <p style="margin-left: 80px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtTitle" runat="server" TextMode="MultiLine" Width="469px" OnTextChanged="txtTitle_TextChanged"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTitle" runat="server" ControlToValidate="txtTitle" ErrorMessage="please enter the question"></asp:RequiredFieldValidator>
        </p>
    <p>
        Answer 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <asp:TextBox ID="txtAnswer1" runat="server" Width="206px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAnswer1" runat="server" ControlToValidate="txtAnswer1" ErrorMessage="please enter the answer 1"></asp:RequiredFieldValidator>
    </p>
    <p>
        Answer 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <asp:TextBox ID="txtAnswer2" runat="server" Width="205px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAnswer2" runat="server" ControlToValidate="txtAnswer2" ErrorMessage="please enter the answer 2"></asp:RequiredFieldValidator>
    </p>
    <p>
        Answer 3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <asp:TextBox ID="txtAnswer3" runat="server" Width="202px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAnswer3" runat="server" ControlToValidate="txtAnswer3" ErrorMessage="please enter the question 3"></asp:RequiredFieldValidator>
    </p>
    <p>
        Answer 4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <asp:TextBox ID="txtAnswer4" runat="server" Width="202px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAnswer4" runat="server" ControlToValidate="txtAnswer4" ErrorMessage="please enter the answer 4"></asp:RequiredFieldValidator>
    </p>
    <p>
        Correct Answer&nbsp; : <asp:DropDownList ID="DropDownListCorrectAnswer" runat="server" Height="16px" Width="171px">
            <asp:ListItem>Answer1</asp:ListItem>
            <asp:ListItem>Answer2</asp:ListItem>
            <asp:ListItem>Answer3</asp:ListItem>
            <asp:ListItem>Answer4</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        Answer Explanation:</p>
    <p style="margin-left: 80px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtAnswerExplanation" runat="server" Height="64px" TextMode="MultiLine" Width="427px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        optional field</p>
    <p>
        Question Order : <asp:TextBox ID="txtQuestionOrder" runat="server" Width="126px"></asp:TextBox>
&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidatorQuestionOrder" runat="server" ControlToValidate="txtQuestionOrder" ErrorMessage="enter the question order"></asp:RequiredFieldValidator>
    </p>
    <p>
        (question order should be like 1,2,3,...,last question. it determines the sequence of order of question.)</p>
    <p>
        Quiz&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <asp:DropDownList ID="DropDownListQuiz" runat="server" Height="16px" Width="253px" DataSourceID="LinqDataSourceQuiz" DataTextField="Title" DataValueField="QuizID">
        </asp:DropDownList>
        <asp:LinqDataSource ID="LinqDataSourceQuiz" runat="server" ContextTypeName="Online_Quiz.DataClassesOnlineQuizDataContext" EntityTypeName="" TableName="Quizs">
        </asp:LinqDataSource>
    </p>
</asp:Content>
