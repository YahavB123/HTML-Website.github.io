<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Lists.aspx.cs" Inherits="Lists" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="resources/styles/tags.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <h1>Html Lists Tags</h1>
    <a href="./resources/images/html_tag.png">
        <img id="tag_img" src="./resources/images/lists-tags.png" />
    </a>

    <br />
    <br />
    <br />

    <h2>
        HTML offers web authors three ways for specifying lists of information. All lists must contain one or more list elements. Lists may contain −
    </h2>

    <ul>
        <li><strong>&lt ul &gt</strong> - An unordered list. This will list items using plain bullets.</li>
        <li><strong>&lt ol &gt</strong> - An ordered list. This will use different schemes of numbers to list your items.</li>
        <li><strong>&lt dl &gt</strong> - A definition list. This arranges your items in the same way as they are arranged in a dictionary.</li>
    </ul>

    <br>
    <br>
    <br>
    <ul class="buttons">
        <li><a href="./OL.aspx">Ordered List Tag</a></li>
        <li><a href="./UL.aspx">Unorderd List Tag</a></li>
        <li><a href="./DL.aspx">Description List Tag</a></li>
    </ul>
</asp:Content>

