<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Table.aspx.cs" Inherits="Table" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="resources/styles/tags.css" rel="stylesheet" type="text/css" />
    <link href="resources/styles/tableform.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <h1>HTML Table Reference</h1>
    <article id="tags">
        <h2>Table Tags</h2>
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
                    <td><code>&lt;table&gt;</code></td>
                    <td>Table</td>
                    <td>It defines a table.</td>
                </tr>

                <tr>
                    <td><code>&lt;tr&gt;</code></td>
                    <td>Table Row</td>
                    <td>It defines a row in a table.</td>
                </tr>

                <tr>
                    <td><code>&lt;th&gt;</code></td>
                    <td>Table Head</td>
                    <td>It defines a header cell in a table.</td>
                </tr>

                <tr>
                    <td><code>&lt;td&gt;</code></td>
                    <td>Table Data</td>
                    <td>It defines a cell in a table.
                        <article id="attr">
                            <br />
                            Table Data Attributes:
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
                                        <td><code>colspan</code></td>
                                        <td>Column Span</td>
                                        <td>number</td>
                                        <td>Specifies the number of columns a cell should span</td>
                                    </tr>

                                    <tr>
                                        <td><code>rowspan</code></td>
                                        <td>Row Span</td>
                                        <td>number</td>
                                        <td>Specifies the number of rows a cell should span</td>
                                    </tr>

                                    <tr>
                                        <td><code>headers</code></td>
                                        <td>Headers</td>
                                        <td>header_id</td>
                                        <td>Specifies one or more header cells a cell is related to (Sementic only)</td>
                                    </tr>

                                </tbody>
                            </table>
                        </article>
                    </td>
                </tr>

                <tr>
                    <td><code>&lt;caption&gt;</code></td>
                    <td>Caption</td>
                    <td>It defines the table caption.</td>
                </tr>

                <tr>
                    <td><code>&lt;colgroup&gt;</code></td>
                    <td>Column Group</td>
                    <td>It specifies a group of one or more columns in a table for formatting.</td>
                </tr>

                <tr>
                    <td><code>&lt;col&gt;</code></td>
                    <td>Column</td>
                    <td>It is used with the &lt;colgroup&gt; element to specify column properties for each coloumn.</td>
                </tr>

                <tr>
                    <td><code>&lt;tbody&gt;</code></td>
                    <td>Table Body</td>
                    <td>It is used to group the body content in a table.</td>
                </tr>

                <tr>
                    <td><code>&lt;thead&gt;</code></td>
                    <td>Table Head</td>
                    <td>It is used to group the header content in a table.</td>
                </tr>

                <tr>
                    <td><code>&lt;tfooter&gt;</code></td>
                    <td>Table Footer</td>
                    <td>It is used to group the footer content in a table.</td>
                </tr>
            </tbody>
        </table>
    </article>

    <article id="attr">
        <h2>Table Attributes</h2>

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
                    <td><code>align</code></td>
                    <td>Align</td>
                    <td>right<br />left<br />center<br />justify<br />char</td>
                    <td>Alignment of the table.</td>
                </tr>

                <tr>
                    <td><code>bgcolor</code></td>
                    <td>Background Color</td>
                    <td>rgb(x, x, x)<br />hsl(x, x, x)<br />#hexcode<br />colorname</td>
                    <td>Background color of the table.</td>
                </tr>

                <tr>
                    <td><code>border</code></td>
                    <td>Border</td>
                    <td>size</td>
                    <td>Size of the fram surrounding table.</td>
                </tr>

                <tr>
                    <td><code>cellpadding</code></td>
                    <td>Cell Padding</td>
                    <td>size</td>
                    <td>Space between the content of a cell and the border.</td>
                </tr>

                <tr>
                    <td><code>cellspacing</code></td>
                    <td>Cell Spacing</td>
                    <td>size</td>
                    <td>Size of the space between cells.</td>
                </tr>

                <tr>
                    <td><code>frame</code></td>
                    <td>Frame</td>
                    <td>void<br />above<br />below<br />hsides<br />lhs<br />rhs<br />vsides<br />box<br />border</td>
                    <td>Side of the table frame is displayed.</td>
                </tr>

                <tr>
                    <td><code>rules</code></td>
                    <td>Rules</td>
                    <td>none<br />groups<br />rows<br />cols<br />all</td>
                    <td>Lines that should be displayed.</td>
                </tr>

                <tr>
                    <td><code>summary</code></td>
                    <td>Summary</td>
                    <td>text</td>
                    <td>Alternative text is displayed when table can not be displayed.</td>
                </tr>

                <tr>
                    <td><code>width</code></td>
                    <td>Width</td>
                    <td>size</td>
                    <td>Width of the table.</td>
                </tr>
            </tbody>
        </table>
    </article>

</asp:Content>

