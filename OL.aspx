<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OL.aspx.cs" Inherits="OL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="resources/styles/tags.css" rel="stylesheet" type="text/css" />
    <link href="resources/styles/tableform.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <h1>HTML Ordered List Tag Reference</h1>
    <article id="tags">
        <h2>Ordered List Tags</h2>
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
                    <td><code>&lt;ol&gt;</code></td>
                    <td>Ordered List</td>
                    <td>It defines an ordered list.</td>
                </tr>
                <tr>
                    <td><code>&lt;li&gt;</code></td>
                    <td>List Item</td>
                    <td>It defines an ordered list item.</td>
                </tr>
            </tbody>
        </table>
    </article>

    <article id="attr">
        <h2>Ordered List Attributes</h2>

        <table>
            <thead>
                <tr>
                    <th>Attribute</th>
                    <th>Name</th>
                    <th>Value</th>
                    <th>Description</th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <td><code>compact</code></td>
                    <td>Comapct</td>
                    <td>compact</td>
                    <td>This attribute takes a boolean value and hints to render the list in a compact style. That is, it will render the list smaller on a webpage.</td>
                </tr>

                <tr>
                    <td><code>reversed</code></td>
                    <td>Reversed</td>
                    <td>reversed</td>
                    <td>(boolean) As the name suggests, the items will be in reverse order, starting from high to low as specified by the user.</td>
                </tr>

                <tr>
                    <td><code>start</code></td>
                    <td>Start</td>
                    <td>number</td>
                    <td> It is used to specify the start value of a number from where the numbering of the list begins.</td>
                </tr>

                <tr>
                    <td><code>type</code></td>
                    <td>Numbering Type</td>
                    <td>i<br />I<br />a<br />A<br />1</td>
                    <td>
                        It is used to set the type of numbering. Its values are as follows:
                        <ul>
                            <li>"i"- The list items are numbered in the form of lowercase Roman numbers.</li>
                            <li>"I"- The list items are numbered in the form of uppercase Roman numbers.</li>
                            <li>"a"- The list items are numbered in the form of lowercase letters.</li>
                            <li>"A"- The list items are numbered in the form of uppercase letters.</li>
                            <li>"1"- The list items are numbered in the form of numbers. The type "1" is the default type.</li>
                        </ul>
                    </td>
                </tr>
            </tbody>
        </table>
    </article>
</asp:Content>

