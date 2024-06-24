<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Tags.aspx.cs" Inherits="Tags" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="resources/styles/tags.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <h1>Html Common Tags</h1>
    <a href="./resources/images/html_tag.png">
        <img id="tag_img" src="./resources/images/html_tag.png" />
    </a>

    <br>
    <br>
    <br>
    <h2>
      Html has many tags and each tag has many types of attributes. Here I will introduce you to some of them, And show you their attributes and children tags!
    </h2>

    <br>
    <br>
    <br>
    <ul class="buttons">
        <li><a href="./Lists.aspx">Lists Tags</a></li>
        <li><a href="./Form.aspx">Form Tag</a></li>
        <li><a href="./Table.aspx">Table Tag</a></li>
        <li><a href="./Img.aspx">Image Tag</a></li>
    </ul>
</asp:Content>

