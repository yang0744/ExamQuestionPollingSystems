<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Online_Quiz.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>

    <article>
        <p>        
            <span class="auto-style1" lang="EN-US" style="mso-bidi-font-size: 11.0pt; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">Exam Question Polling System is mainly focus in increase user interest in Web-Based Examination. </span>
        </p>
        <p>        
            <span class="auto-style1" lang="EN-US" style="mso-bidi-font-size: 11.0pt; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">In this system is helping user to manage the examination easily and saved more time for whole progress of examination. The system is help user to manage from question preparation until grading of examination test. </span>
        </p>
        <p>        
            <span class="auto-style1" lang="EN-US" style="mso-bidi-font-size: 11.0pt; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">In this system, mainly focus in the backend server part of the system. The backend server includes 2 main parts such as Question bank and Grading systems. </span>
        </p>
        <p>        
            <span class="auto-style1" lang="EN-US" style="mso-bidi-font-size: 11.0pt; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">Question bank is stored all the questions has been created in the systems and Grading systems is automatically grading the total score of the examination for the exam taker. </span>
        </p>

        <p>        
            &nbsp;</p>

        <p>        
            &nbsp;</p>
    </article>

    <aside>
        <h3>Aside Title</h3>
        <p>        
            Use this area to provide additional information.
        </p>
        <ul>
            <li><a runat="server" href="~/">Home</a></li>
            <li><a runat="server" href="~/About.aspx">About</a></li>
            <li><a runat="server" href="~/Contact.aspx">Contact</a></li>
        </ul>
    </aside>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
    </style>
</asp:Content>
