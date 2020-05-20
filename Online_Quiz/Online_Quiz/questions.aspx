<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="questions.aspx.cs" Inherits="Online_Quiz.questions" %>

    


    
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    
    <h1>Questions&nbsp;&nbsp;&nbsp;&nbsp; current quiz :
        <asp:Label ID="lblCurrentQuiz" runat="server" Text="*"></asp:Label>
    </h1>
    <div>
        <asp:ScriptManager ID= "SM1" runat="server"></asp:ScriptManager>
        &nbsp;<asp:UpdatePanel ID="UpdatePanel1" runat="server" Mode="Conditional">
            <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />  
          </Triggers>
                <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
            </asp:Timer>
                     <asp:Label ID="lblTime" runat="server" BackColor="Yellow" BorderStyle="None" Font-Bold="True" Font-Size="X-Large" Text="*" Width="469px"></asp:Label>
                </ContentTemplate>
            
        </asp:UpdatePanel>
    </div>
    <%--<div>
        <asp:Label ID="lblTime" runat="server" BackColor="Yellow" BorderStyle="None" Font-Bold="True" Font-Size="X-Large" Text="*" Width="183px"></asp:Label>
    </div>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:DetailsView ID="DetailsViewQuestions" runat="server" AutoGenerateRows="False" DataKeyNames="QuestionID" DataSourceID="SqlDataSource1" Height="50px" Width="773px" OnPageIndexChanging="DetailsViewQuestions_PageIndexChanging">
        <Fields>
            <asp:BoundField DataField="QuestionID" HeaderText="QuestionID" InsertVisible="False" ReadOnly="True" SortExpression="QuestionID" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Answer1" HeaderText="Answer1" SortExpression="Answer1" />
            <asp:BoundField DataField="Answer2" HeaderText="Answer2" SortExpression="Answer2" />
            <asp:BoundField DataField="Answer3" HeaderText="Answer3" SortExpression="Answer3" />
            <asp:BoundField DataField="Answer4" HeaderText="Answer4" SortExpression="Answer4" />
            <asp:BoundField DataField="QuestionOrder" HeaderText="QuestionOrder" SortExpression="QuestionOrder" />
           <%-- <asp:BoundField DataField="CorrectAnswer" HeaderText="CorrectAnswer" SortExpression="CorrectAnswer" />
 --%>           <asp:BoundField DataField="QuizID" HeaderText="QuizID" SortExpression="QuizID" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineQuizConnectionString1 %>" SelectCommand="SELECT QuestionID, Title, Answer1, Answer2, Answer3, Answer4, QuestionOrder, CorrectAnswer,QuizID FROM Question WHERE (QuizID = @QuizID) ORDER BY QuestionOrder">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="1" Name="QuizID" SessionField="QuizId" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    Your answer:
    <asp:DropDownList ID="DropDownList1" runat="server" Width="100px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>Answer1</asp:ListItem>
        <asp:ListItem>Answer2</asp:ListItem>
        <asp:ListItem>Answer3</asp:ListItem>
        <asp:ListItem Value="Answer 4">Answer4</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnNext" runat="server" OnClick="btnNext_Click" Text="Next" />
    
</asp:Content>
  