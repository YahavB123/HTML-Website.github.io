<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="resources/styles/tableform.css" rel="stylesheet" type="text/css" />
    <script src="resources/js/registerCheck.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <h1>Register</h1>
    <form id="form1" runat="server" action="Register.aspx" onsubmit="return checkAll()">
        <table border="2px solid black" width="50%">
            <tr>
                <td>First Name: </td>
                <td>
                    <input type="text" name="firstName" id="firstNameId" placeholder="Enter your first name: " />
                    <span id="firstNameError"></span>
                </td>
            </tr>

            <tr>
                <td>Last Name: </td>
                <td>
                    <input type="text" name="lastName" id="lastNameId" placeholder="Enter your last name: " />
                    <span id="lastNameError"></span>    
                </td>
            </tr>

            <tr>
                <td>Year of Birth: </td>
                <td>
                    <input type="text" name="date" id="dateId" placeholder="Enter your year of birth here: " size="30"/>
                    <span id="dateError"></span>    
                </td>
            </tr>
            
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
                <td>ID Number: </td>
                <td>
                    <input type="text" name="idNumber" id="idNumberId" placeholder="e.g: 123456789"/>
                    <span id="idNumberError"></span>
                </td>
            </tr>

            <tr>
                <td>Gender: </td>
                <td>
                    <div id="genderId">
                        <label for="male">Male:</label>
                        <input id="male" type="radio" name="gender" value="male"/>
                        <label for="female">Female:</label>
                        <input id="female" type="radio" name="gender" value="female"/>
                        <label for="other">Other:</label>
                        <input id="other" type="radio" name="gender" value="other"/> 
                    </div>

                    <span id="genderError"></span>   
                </td>
            </tr>

            <tr>
                <td>Years Coding: </td>
                <td class="slider">
                    <input type="range" name="yearsCoding" id="yearsCodingId" min="0" max="15" value="0" oninput="rangeValue.innerText = this.value" />
                    <p id="rangeValue">None</p>
                    <span id="yearsCodingError"></span> 
                </td>
            </tr>

            <tr>
                <td>Favorite Coding Language: </td>
                <td>
                    <input type="text" name="codingLanguage" id="codingLanguageId" placeholder="e.g: python3"/>
                    <span id="codingLanguageError"></span> 
                </td>
            </tr>

            <tr>
                <td><center><input type="reset" name="reset" value="Reset" onclick="resetAll()"/></center></td>
                <td><center><input type="submit" name="submit" value="Register"/></center></td>
            </tr>
        </table>
    </form>
</asp:Content>

