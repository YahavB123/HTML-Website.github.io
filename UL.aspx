    <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UL.aspx.cs" Inherits="UL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="resources/styles/tags.css" rel="stylesheet" type="text/css" />
    <link href="resources/styles/tableform.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <h1>HTML Unordered List Tag Reference</h1>
    <article id="tags">
        <h2>Unordered List Tags</h2>
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
                    <td><code>&lt;ul&gt;</code></td>
                    <td>Unordered List</td>
                    <td>It defines an unordered list.</td>
                </tr>
                <tr>
                    <td><code>&lt;li&gt;</code></td>
                    <td>List Item</td>
                    <td>It defines an unordered list item.</td>
                </tr>
            </tbody>
        </table>
    </article>

    <article id="attr">
        <h2>Unordered List Attributes</h2>

        <table>
            <thead>
                <tr>
                    <th>Attribute</th>
                    <th>Name</th>
                    <th>value</th>
                    <th>Description</th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <td><code>compact</code></td>
                    <td>Comapct</td>
                    <td>compact</td>
                    <td>(boolean) This attribute takes a boolean value and hints to render the list in a compact style. That is, it will render the list smaller on a webpage.</td>
                </tr>

                <tr>
                    <td><code>type</code></td>
                    <td>Bullet Type</td>
                    <td>circle<br />disc<br />square</td>
                    <td>
                        This attribute is used to set the bullet style for the list, that is, which type of marker would be used for styling the lists.
                    </td>
                </tr>
            </tbody>
        </table>
    </article>
</asp:Content>

