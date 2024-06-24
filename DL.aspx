<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DL.aspx.cs" Inherits="DL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="resources/styles/tags.css" rel="stylesheet" type="text/css" />
    <link href="resources/styles/tableform.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <h1>HTML Description List Tag Reference</h1>
    <article id="tags">
        <h2>Description List Tags</h2>
        <table>
            <thead>
                <tr>
                    <th>Tag</th>
                    <th>Name</th>
                    <th>Description</th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <td><code>&lt;dl&gt;</code></td>
                    <td>Ordered List</td>
                    <td>It defines a description list.</td>
                </tr>
                <tr>
                    <td><code>&lt;dt&gt;</code></td>
                    <td>Description Term</td>
                    <td>It defines a description list term, that should be descripted.</td>
                </tr>
                 <tr>
                    <td><code>&lt;dd&gt;</code></td>
                    <td>Description Description</td>
                    <td>Used to describe a term/name in a description list.</td>
                </tr>
            </tbody>
        </table>
    </article>
</asp:Content>

