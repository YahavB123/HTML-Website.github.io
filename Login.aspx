<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="resources/styles/tableform.css" rel="stylesheet" type="text/css" />
    <script src="resources/js/registerCheck.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <h1>Login</h1>
    <form id="form1" runat="server" action="Login.aspx" onsubmit="return checkAllLogin()">
        <table>
            <tr>
                <td>E-Mail: </td>
                <td>
                    <input type="text" name="email" id="emailId" placeholder="e.g: username@domain" size="50"/>
                    <span id="emailError"></span> 
          
                </td>
            </tr>

            <tr>
                <td>Password: </td>
                <td>
                    <input type="password" name="pwd" id="pwdId" placeholder="Enter your password:" />
                    <span id="pwdError"></span>
                       
                </td>
            </tr>

            <tr>
                <td><center><input type="reset" name="reset" value="Reset" onclick="resetAllLogin()"/></center></td>
                <td><center><input type="submit" name="submit" value="Login"/></center></td>
            </tr>
        </table>
    </form>
</asp:Content>

