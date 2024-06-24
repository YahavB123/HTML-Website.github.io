<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Img.aspx.cs" Inherits="Img" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="resources/styles/tags.css" rel="stylesheet" type="text/css" />
    <link href="resources/styles/tableform.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <article id="tags">
        <h2>Image Tags</h2>
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
                    <td><code>&lt;img&gt;</code></td>
                    <td>Image</td>
                    <td>It defines an Image.</td>
                </tr>
            </tbody>
        </table>
    </article>

    <article id="attr">
        <h2>Image Attributes</h2>

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
                <td><code>alt</code></td>
                <td>Alternate</td>
                <td>text</td>
                <td>Specifies an alternate text for an image</td>
            </tr>

            <tr>
                <td><code>crossorigin</code></td>
                <td>Cross Origin</td>
                <td>anonymous<br />use-credentials</td>
                <td>Allow images from third-party sites that allow cross-origin access to be used with canvas</td>
            </tr>

            <tr>
                <td><code>height</code></td>
                <td>Height</td>
                <td>size</td>
                <td>Specifies the height of an image</td>
            </tr>

            <tr>
                <td><code>ismap</code></td>
                <td>Is Map</td>
                <td>ismap</td>
                <td>(boolean) Specifies an image as a server-side image map</td>
            </tr>

            <tr>
                <td><code>loading</code></td>
                <td>Loading</td>
                <td>eager<br />lazy</td>
                <td>Specifies whether a browser should load an image immediately or to defer loading of images until some conditions are met</td>
            </tr>

            <tr>
                <td><code>longdesc</code></td>
                <td>Long Description</td>
                <td>URL</td>
                <td>Specifies a URL to a detailed description of an image</td>
            </tr>

            <tr>
                <td><code>referrerpolicy</code></td>
                <td>Referrer Policy</td>
                <td>no-referrer<br />no-refferer-when-downgrade<br />origin<br />origin-when-cross-origin<br />unsafe-url</td>
                <td>Specifies which referrer information to use when fetching an image</td>
            </tr>

            <tr>
                <td><code>sizes</code></td>
                <td>Sizes</td>
                <td>sizes</td>
                <td>Specifies image sizes for different page layouts</td>
            </tr>

            <tr>
                <td><code>src</code></td>
                <td>Source</td>
                <td>URL</td>
                <td>Specifies the path to the image</td>
            </tr>

            <tr>
                <td><code>srcset</code></td>
                <td>Source Set</td>
                <td>URL-list</td>
                <td>Specifies a list of image files to use in different situations</td>
            </tr>

            <tr>
                <td><code>usemap</code></td>
                <td>Use Map</td>
                <td>#mapname</td>
                <td>Specifies an image as a client-side image map</td>
            </tr>

            <tr>
                <td><code>width</code></td>
                <td>Width</td>
                <td>size</td>
                <td>Specifies the width of an image</td>
            </tr>
        </tbody>
        </table>
    </article>
</asp:Content>

