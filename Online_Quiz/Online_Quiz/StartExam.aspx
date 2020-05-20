<%@ Page Title="Start Exam" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StartExam.aspx.cs" Inherits="Online_Quiz._Default" %>

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
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p class="auto-style2" style="margin-left: 40px">
                Student able to view the examination&#39;s result in this page.</p>
    &nbsp; &nbsp;&nbsp;<strong __designer:mapid="74"><span class="auto-style1">Exam Available:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_BackSP" runat="server" PostBackUrl="~/StudentPage.aspx" Text="Back" Width="56px" />
    <br />
                                <asp:DataList ID="DataList1" runat="server" DataSourceID="LinqDataSourceQuiz" DataKeyField="QuizID" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                    <ItemStyle BackColor="White" ForeColor="#330099" />
                                    <ItemTemplate>
                                        Title:
                                        <asp:HyperLink ID="HyperLink3" runat="server" Text='<%# Eval("Title") %>' NavigateUrl='<%# "start.aspx?testid=" +Eval("QuizID") %>'></asp:HyperLink>
                                        <br />
                                        Course Name:
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("CourseName") %>' />
                                        <br />
                                        <br />
                                        QuizID:
                                        <asp:Label ID="QuizIDLabel" runat="server" Text='<%# Eval("QuizID") %>' />
                                        <br />
                                        Title:
                                        <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                                        <br />
                                       <%-- CourseID:
                                        <asp:Label ID="CourseIDLabel" runat="server" Text='<%# Eval("CourseID") %>' />
                                        <br />
                                        CourseName:
                                        <asp:Label ID="CourseNameLabel" runat="server" Text='<%# Eval("CourseName") %>' />
                                        <br />--%>
                                        <br />
                                    </ItemTemplate>
                                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                </asp:DataList>
                                <asp:LinqDataSource ID="LinqDataSourceQuiz" runat="server" ContextTypeName="Online_Quiz.DataClassesOnlineQuizDataContext" EntityTypeName="" TableName="Quizs">
    </asp:LinqDataSource>
    <div>
        <p>
            
    </div>
    
    </span>
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

