<%@ Page Title="Tutor Protal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TutorPage.aspx.cs" Inherits="Online_Quiz._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Welcome to the Tutor Protal</h1>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <p class="auto-style2" style="margin-left: 40px">
                Tutor may manage the Course, Questions, Examination, Send Mail and Review the Student&#39;s Result in this page.</p>
    <br />
&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="imgBtn_CM" runat="server" Height="232px" ImageUrl="~/Data_Source/Images/CourseManagement.png" PostBackUrl="~/Course.aspx" Width="205px" />
&nbsp;<asp:ImageButton ID="imgBtn_EM" runat="server" Height="232px" ImageUrl="~/Data_Source/Images/ExaminationManagement.png" PostBackUrl="~/QuizProfile.aspx" Width="205px" />
            &nbsp;<asp:ImageButton ID="imgBtn_QM" runat="server" Height="232px" ImageUrl="~/Data_Source/Images/QuestionManagement.png" PostBackUrl="~/addQuestion.aspx" Width="205px" />
&nbsp;<asp:ImageButton ID="imgBtn_SM" runat="server" Height="232px" ImageUrl="~/Data_Source/Images/SendMail.png" PostBackUrl="~/SendEmail.aspx" Width="205px" />
            <br />
    <br />
    <br />
    <strong __designer:mapid="74">
                                <span class="auto-style1">Results:</span><asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="UserQuizID" DataSourceID="LinqDataSourceResult" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="UserQuizID" HeaderText="UserQuizID" InsertVisible="False" ReadOnly="True" SortExpression="UserQuizID" />
                                        <asp:BoundField DataField="QuizID" HeaderText="QuizID" SortExpression="QuizID" />
                                        <asp:BoundField DataField="DateTimeCompleted" HeaderText="DateTimeCompleted" SortExpression="DateTimeCompleted" />
                                        <asp:BoundField DataField="CorrectAnswerCount" HeaderText="CorrectAnswerCount" SortExpression="CorrectAnswerCount" />
                                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                                        <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
                                    </Columns>
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>
                                <asp:LinqDataSource ID="LinqDataSourceResult" runat="server" ContextTypeName="Online_Quiz.DataClassesOnlineQuizDataContext" EntityTypeName="" TableName="UserQuizs">
        </asp:LinqDataSource>
                                </strong>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            font-size: medium;
        }
    </style>
    </asp:Content>

