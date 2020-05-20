<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Online_Quiz._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>An online quiz platform to test your IQ.<br />
                </h2>
            </hgroup>
         
            <p>
                A exam can assess about your knowledge in a particular subject. it can give an assessment about the skills and can enhance the evluation process.</p>
            <p>
                <asp:LoginView ID="LoginViewTestResultHistory" runat="server" OnViewChanged="LoginViewTestResultHistory_ViewChanged">
                    <RoleGroups>
                        <asp:RoleGroup Roles="Student">
                            <ContentTemplate>
                                <strong>Available quiz</strong><br />
                                <br />
                                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                        Title:
                                        <asp:HyperLink ID="HyperLink3" runat="server" Text='<%# Eval("Title") %>' NavigateUrl='<%# "start.aspx?testid=" +Eval("QuizID") %>'></asp:HyperLink>
                                        <br />
                                        Course Name:
                                        <asp:Label ID="CourseNameLabel" runat="server" Text='<%# Eval("CourseName") %>' />
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineQuizConnectionString1 %>" SelectCommand="SELECT [QuizID], [Title], [CourseName] FROM [Quiz]"></asp:SqlDataSource>
                                <br />
                                <br />
                                <strong>Test Result History<br /> <br />
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="QuizID1" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                                        <asp:BoundField DataField="DateTimeCompleted" HeaderText="DateTimeCompleted" SortExpression="DateTimeCompleted" />
                                        <asp:BoundField DataField="QuizID" HeaderText="QuizID" SortExpression="QuizID" />
                                        <asp:BoundField DataField="QuizID1" HeaderText="QuizID1" SortExpression="QuizID1" InsertVisible="False" ReadOnly="True" />
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
                                <br />
                                </strong>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineQuizConnectionString1 %>" SelectCommand="SELECT Quiz.Title, UserQuiz.DateTimeCompleted, UserQuiz.QuizID, Quiz.QuizID AS QuizID, UserQuiz.Score FROM UserQuiz INNER JOIN Quiz ON UserQuiz.QuizID = Quiz.QuizID GROUP BY UserQuiz.QuizID, Quiz.QuizID, Quiz.Title, UserQuiz.DateTimeCompleted, UserQuiz.Score"></asp:SqlDataSource>
                                <br />
                            </ContentTemplate>
                        </asp:RoleGroup>
                        <asp:RoleGroup Roles="Admin">
                            <ContentTemplate>
                                <br />
                                <span class="auto-style1"><strong>Courses:</strong></span><asp:DataList ID="DataList2" runat="server" DataSourceID="LinqDataSource1">
                                    <ItemTemplate>
                                        CourseID:
                                        <asp:Label ID="CourseIDLabel" runat="server" Text='<%# Eval("CourseID") %>' />
                                        <br />
                                        CourseName:
                                        <asp:Label ID="CourseNameLabel" runat="server" Text='<%# Eval("CourseName") %>' />
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Online_Quiz.DataClassesOnlineQuizDataContext" EntityTypeName="" Select="new (CourseID, CourseName)" TableName="Courses">
                                </asp:LinqDataSource>
                                <span class="auto-style1"><strong>Quiz:</strong></span><br />
                                <asp:DataList ID="DataList3" runat="server" DataSourceID="LinqDataSourceQuiz">
                                    <ItemTemplate>
                                        CourseName:
                                        <asp:Label ID="CourseNameLabel" runat="server" Text='<%# Eval("CourseName") %>' />
                                        <br />
                                        Title:
                                        <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:LinqDataSource ID="LinqDataSourceQuiz" runat="server" ContextTypeName="Online_Quiz.DataClassesOnlineQuizDataContext" EntityTypeName="" Select="new (CourseName, Title)" TableName="Quizs">
                                </asp:LinqDataSource>
                                <br />
                                <span class="auto-style1"><strong>Questions:<br /> </strong>
                                <asp:DataList ID="DataList4" runat="server" DataSourceID="LinqDataSourceQuestion">
                                    <ItemTemplate>
                                        Title:
                                        <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                                        <br />
                                        QuizID:
                                        <asp:Label ID="QuizIDLabel" runat="server" Text='<%# Eval("QuizID") %>' />
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:LinqDataSource ID="LinqDataSourceQuestion" runat="server" ContextTypeName="Online_Quiz.DataClassesOnlineQuizDataContext" EntityTypeName="" Select="new (Title, QuizID)" TableName="Questions">
                                </asp:LinqDataSource>
                                </span>
                            </ContentTemplate>
                        </asp:RoleGroup>
                    </RoleGroups>
                </asp:LoginView>
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
<p>
    &nbsp;</p>
    <ol class="round">
        <li class="one">
            <h5>Getting Started</h5>
            this application can be used by educational institiutes. it can be accessed from anywhere since its a web application
        </li>
        <li class="two">
            <h5>evaluation of knowledge</h5>
            <p>quiz in a particular subject can be taken by students. this is an effective evaluation mechanism.</p>
            <h5>Automatic score evaluation technology</h5>
            <p>this evaluation technology is efficient and robust. it is being adopted world wide by many educational institutes.</p>
&nbsp;</li>
    </ol>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
    </style>
</asp:Content>

