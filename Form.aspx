<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Form.aspx.cs" Inherits="Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="resources/styles/tags.css" rel="stylesheet" type="text/css" />
    <link href="resources/styles/tableform.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <h1>HTML Form Reference</h1>
    <article id="tags">
      <h2>Form Tags</h2>
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
                    <td><code>&lt;form&gt;</code></td>
                    <td>Form</td>
                    <td>Defines a data entry area that contains input elements</td>
                </tr>

               
                <tr>
                    <td><code>&lt;label&gt;</code></td>
                    <td>Label</td>
                    <td>Creates a label or brief description before input elements</td>
                </tr>

                <tr>
                    <td><code>&lt;textarea&gt;</code></td>
                    <td>Text Area</td>
                    <td>Creates a multi-line text input control</td>
                </tr>

                 <tr>
                    <td><code>&lt;input&gt;</code></td>
                    <td>Input</td>
                    <td>
                        Creates an input field in which data can be entered
                        <article id="attr">
                            <br />
                            Form Input Attributes:
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
                                        <td><code>accept</code></td>
                                        <td>Accept</td>
                                        <td>file_extension<br />audio/*<br />video/*<br />image/*<br />media_type</td>
                                        <td>Specifies a filter for what file types the user can pick from the file input dialog box (only for type="file")</td>
                                    </tr>

                                    <tr>
                                        <td><code>alt</code></td>
                                        <td>Alternative</td>
                                        <td>text</td>
                                        <td>Specifies an alternate text for images (only for type="image")</td>
                                    </tr>

                                    <tr>
                                        <td><code>autocomplete</code></td>
                                        <td>Auto Complete</td>
                                        <td>on<br />off</td>
                                        <td>Specifies whether an &lt;input&gt; element should have autocomplete enabled</td>
                                    </tr>

                                    <tr>
                                        <td><code>autofocus</code></td>
                                        <td>Auto Focus</td>
                                        <td>autofocus</td>
                                        <td>Specifies whether an &lt;input&gt; element should have autocomplete enabled</td>
                                    </tr>

                                    <tr>
                                        <td><code>checked</code></td>
                                        <td>Checked</td>
                                        <td>checked</td>
                                        <td>Specifies that an &lt;input&gt; element should be pre-selected when the page loads (for type="checkbox" or type="radio")</td>
                                    </tr>

                                    <tr>
                                        <td><code>dirname</code></td>
                                        <td>Directory Name</td>
                                        <td>inputname.dir</td>
                                        <td>Specifies that the text direction will be submitted</td>
                                    </tr>

                                    <tr>
                                        <td><code>disabled</code></td>
                                        <td>Disabled</td>
                                        <td>disabled</td>
                                        <td>(boolean) Specifies that an &lt;input&gt; element should be disabled</td>
                                    </tr>

                                    <tr>
                                        <td><code>form</code></td>
                                        <td>Form</td>
                                        <td>form_id</td>
                                        <td>Specifies the form the &lt;input&gt; element belongs to</td>
                                    </tr>

                                    <tr>
                                        <td><code>formaction</code></td>
                                        <td>Form Action</td>
                                        <td>URL</td>
                                        <td>Specifies the URL of the file that will process the input control when the form is submitted (for type="submit" and type="image")</td>
                                    </tr>

                                    <tr>
                                        <td><code>formaction</code></td>
                                        <td>Form Action</td>
                                        <td>URL</td>
                                        <td>Specifies the URL of the file that will process the input control when the form is submitted (for type="submit" and type="image")</td>
                                    </tr>

                                    <tr>
                                        <td><code>formenctype</code></td>
                                        <td>Form Encryption Type</td>
                                        <td>application/x-www-form-urlencoded<br />multipart/form-data<br />text/plain</td>
                                        <td>Specifies how the form-data should be encoded when submitting it to the server (for type="submit" and type="image")</td>
                                    </tr>

                                    <tr>
                                        <td><code>formmethod</code></td>
                                        <td>Form Method</td>
                                        <td>get<br />post</td>
                                        <td>Defines the HTTP method for sending data to the action URL (for type="submit" and type="image")</td>
                                    </tr>

                                    <tr>
                                        <td><code>formnovalidate</code></td>
                                        <td>Form No Validate</td>
                                        <td>formnovalidate</td>
                                        <td>(boolean) Defines the HTTP method for sending data to the action URL (for type="submit" and type="image")</td>
                                    </tr>

                                    <tr>
                                        <td><code>formtarget</code></td>
                                        <td>Form Target</td>
                                        <td>_blank<br />_self<br />_parent<br />_top<br />framename</td>
                                        <td>Defines that form elements should not be validated when submitted</td>
                                    </tr>

                                    <tr>
                                        <td><code>height</code></td>
                                        <td>Height</td>
                                        <td>size</td>
                                        <td>	Specifies the height of an &lt;input&gt; element (only for type="image")</td>
                                    </tr>

                                    <tr>
                                        <td><code>list</code></td>
                                        <td>List</td>
                                        <td>datalist_id</td>
                                        <td>Refers to a &lt;datalist&gt; element that contains pre-defined options for an &lt;input&gt; element</td>
                                    </tr>

                                    <tr>
                                        <td><code>max</code></td>
                                        <td>Max</td>
                                        <td>number<br />date</td>
                                        <td>Specifies the maximum value for an &lt;input&gt; element</td>
                                    </tr>

                                    <tr>
                                        <td><code>maxlength</code></td>
                                        <td>Max Length</td>
                                        <td>length</td>
                                        <td>Specifies the maximum number of characters allowed in an &lt;input&gt; element</td>
                                    </tr>

                                    <tr>
                                        <td><code>min</code></td>
                                        <td>Min</td>
                                        <td>number<br />date</td>
                                        <td>Specifies the minimum value for an &lt;input&gt; element</td>
                                    </tr>

                                    <tr>
                                        <td><code>minlength</code></td>
                                        <td>Min Length</td>
                                        <td>length</td>
                                        <td>Specifies the minimum number of characters allowed in an &lt;input&gt; element</td>
                                    </tr>

                                    <tr>
                                        <td><code>multiple</code></td>
                                        <td>Multiple</td>
                                        <td>multiple</td>
                                        <td>(boolean) Specifies that a user can enter more than one value in an &lt;input&gt; element</td>
                                    </tr>

                                    <tr>
                                        <td><code>name</code></td>
                                        <td>Name</td>
                                        <td>text</td>
                                        <td>Specifies the name of an &lt;input&gt; element</td>
                                    </tr>

                                    <tr>
                                        <td><code>pattern</code></td>
                                        <td>Pattern</td>
                                        <td>regexp</td>
                                        <td>Specifies a regular expression that an &lt;input&gt; element's value is checked against</td>
                                    </tr>

                                    <tr>
                                        <td><code>palceholder</code></td>
                                        <td>Place Holder</td>
                                        <td>text</td>
                                        <td>Specifies a short hint that describes the expected value of an &lt;input&gt; element</td>
                                    </tr>

                                    <tr>
                                        <td><code>readonly</code></td>
                                        <td>Read Only</td>
                                        <td>readonly</td>
                                        <td>(boolean) Specifies that an input field is read-only</td>
                                    </tr>

                                    <tr>
                                        <td><code>required</code></td>
                                        <td>Required</td>
                                        <td>required</td>
                                        <td>(boolean) Specifies that an input field must be filled out before submitting the form</td>
                                    </tr>

                                    <tr>
                                        <td><code>size</code></td>
                                        <td>Size</td>
                                        <td>number</td>
                                        <td>Specifies the width, in characters, of an &lt;input&gt; element</td>
                                    </tr>

                                    <tr>
                                        <td><code>src</code></td>
                                        <td>Source</td>
                                        <td>URL</td>
                                        <td>Specifies the URL of the image to use as a submit button (only for type="image")</td>
                                    </tr>

                                    <tr>
                                        <td><code>step</code></td>
                                        <td>Step</td>
                                        <td>number<br />any</td>
                                        <td>Specifies the interval between legal numbers in an input field</td>
                                    </tr>

                                    <tr>
                                        <td><code><b>type</b></code></td>
                                        <td><b>Type</b></td>
                                        <td><b>button<br />checkbox<br />color<br />date<br />datetime-local<br />email<br />file<br />hidden<br />image<br />month<br />number<br />password<br />radio<br />range<br />reset<br />search<br />submit<br />tel<br />text<br />time<br />url<br />week</b></td>
                                        <td><b>Specifies the type &lt;input&gt; element to display</b></td>
                                    </tr>

                                    <tr>
                                        <td><code>value</code></td>
                                        <td>Value</td>
                                        <td>text</td>
                                        <td>Specifies the value of an &lt;input&gt; element</td>
                                    </tr>

                                    <tr>
                                        <td><code>width</code></td>
                                        <td>Width</td>
                                        <td>size</td>
                                        <td>Specifies the width of an &lt;input&gt; element (only for type="image")</td>
                                    </tr>
                                </tbody>
                            </table>
                        </article>
                    </td>
                </tr>

                <tr>
                    <td><code>&lt;select&gt;</code></td>
                    <td>Select</td>
                    <td>Creates a dropdown control</td>
                </tr>

                <tr>
                    <td><code>&lt;button&gt;</code></td>
                    <td>Button</td>
                    <td>Creates a clickable button that can contain text or an image</td>
                </tr>

                <tr>
                    <td><code>&lt;datalist&gt;</code></td>
                    <td>Data List</td>
                    <td>Specifies a list of options for a textfield (&lt;input&gt;) element</td>
                </tr>

                <tr>
                    <td><code>&lt;fieldset&gt;</code></td>
                    <td>Field Set</td>
                    <td>Groups related form elements and displays a box with a legend around these</td>
                </tr>

                <tr>
                    <td><code>&lt;legend&gt;</code></td>
                    <td>Legend</td>
                    <td>Defines a caption for a fieldset</td>
                </tr>

            </tbody>
        </table>
    </article>

    <article id="attr">
      <h2>Form Attributes</h2>

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
            <td><code>accept-charset</code></td>
            <td>Accept Charset</td>
            <td>charcter_set</td>
            <td>Specifies the character encodings used for form submission</td>
          </tr>

          <tr>
            <td><code>action</code></td>
            <td>Action</td>
            <td>URL</td>
            <td>Specifies where to send the form-data when a form is submitted</td>
          </tr>

          <tr>
            <td><code>autocomplete</code></td>
            <td>Auto Complete</td>
            <td>on<br />off</td>
            <td>Specifies whether a form should have autocomplete on or off</td>
          </tr>

          <tr>
            <td><code>enctype</code></td>
            <td>Encryption Type</td>
            <td>application/x-www-form-urlencoded<br />multipart/form-data<br />text/plain</td>
            <td>Specifies how the form-data should be encoded when submitting it to the server (only for method="post")
            </td>
          </tr>


          <tr>
            <td><code>method</code></td>
            <td>Method</td>
            <td>get<br />post</td>
            <td>Specifies the HTTP method to use when sending form-data</td>
          </tr>

          <tr>
            <td><code>name</code></td>
            <td>Name</td>
            <td>text</td>
            <td>Specifies the name of the form</td>
          </tr>

          <tr>
            <td><code>novalidate</code></td>
            <td>Not Validate</td>
            <td>novalidate</td>
            <td>(boolean) Specifies that the form should not be validated when submitted</td>
          </tr>

          <tr>
            <td><code>rel</code></td>
            <td>Relation</td>
            <td>external<br />help<br />license<br />next<br />nofollow<br />noopener<br />noreferrer<br />opener<br />prev<br />search</td>
            <td>Specifies the relationship between a linked resource and the current document</td>
          </tr>

          <tr>
            <td><code>target</code></td>
            <td>Target</td>
            <td>_blank<br />_self<br />_parent<br />_top</td>
            <td>Specifies where to display the response that is received after submitting the form</td>
          </tr>
        </tbody>
      </table>
    </article>
</html>

</asp:Content>

