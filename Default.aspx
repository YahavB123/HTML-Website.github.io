<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="resources/styles/index.css" rel="stylesheet" type="text/css" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <h1 id="title">What Is HTML?</h1>
    <br/>
    <a href="./resources/images/HomeImage.jpg" target="_blank">
      <img id="logo" src="./resources/images/HomeImage.jpg">
    </a>
    <p>HTML stands for HyperText Markup Language. It is a standard markup language for web page creation. It allows the creation and structure of sections, paragraphs, and links using HTML elements (the building blocks of a web page) such as tags and attributes. </p>
    <br/>
    <h3>HTML has a lot of use cases, namely:</h3>
    <ul>
      <li><b>Web development</b>.Developers use HTML code to design how a browser displays web page elements, such as text, hyperlinks, and media files.</li>
      <li><b>Internet navigation</b>. Users can easily navigate and insert links between related pages and websites as HTML is heavily used to embed hyperlinks.</li>
      <li><b>Web documentation</b>. HTML makes it possible to organize and format documents, similarly to Microsoft Word.</li>
    </ul>
    <br />
    <p>It's also worth noting that HTML is not considered a programming language as it can't create dynamic functionality. It is now considered an official web standard. The World Wide Web Consortium (W3C) maintains and develops HTML specifications, along with providing regular updates. </p>
</asp:Content>

