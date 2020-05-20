<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmDefaultSecond.aspx.cs" Inherits="Online_Quiz.FrmDefaultSecond" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <p style="color:white;background-color:gray">
        welcome to exam app</p>
</asp:Content>

   

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    
    <h6>available quiz</h6>
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
            <h6>test result history</h6>
        </p>

                                <strong __designer:mapid="74">
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="UserQuizID" DataSourceID="LinqDataSourceResult" CellPadding="4" ForeColor="#333333" GridLines="None">
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

    </div>
    
</asp:Content>
