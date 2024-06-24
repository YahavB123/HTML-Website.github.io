<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Questionnaire.aspx.cs" Inherits="Questionnaire" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="resources/styles/tableform.css" rel="stylesheet" type="text/css" />
    <link href="resources/styles/questionnaire.css" rel="stylesheet" type="text/css" />
    <script src="resources/js/questionnaireCheck.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <h1>Questionnaire!</h1>
    <form id="form1" runat="server" action="Questionnaire.aspx" >
        <table width="50%">
            <thead>
                <tr>
                    <th>Question</th>
                    <th>Answer</th>
                </tr>
            </thead>

            <tbody>
                <tr id="q1">
                    <td>
                        How can you fix the this table, so it will go from this: 
                        <div id="q1_1">
                            <table width="5vw">
                                <thead>
                                    <tr>
                                        <th>Animal</th>
                                        <th>Enemy</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td>Insects: </td>
                                        <td>Frogs</td>
                                    </tr>

                                    <tr>
                                        <td>Dogs: </td>
                                        <td>Cats</td>
                                    </tr>

                                    <tr>
                                        <td>Mice: </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        to this:

                         <div id="q1_2">
                            <table width="10vw">
                                <thead>
                                    <tr>
                                        <th>Animal</th>
                                        <th>Enemy</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td>Insects: </td>
                                        <td>Frogs</td>
                                    </tr>

                                    <tr>
                                        <td>Dogs: </td>
                                        <td rowspan="2">Cats</td>
                                    </tr>

                                    <tr>
                                        <td>Mice: </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </td>
                    <td id="q1-answer">
                        <div id="q1Container">
                            <label for="q1a_1"><code>&lt;td colspan="2"&gt; Cat &lt;td&gt;</code></label>
                            <span id="a1_1" style="color: Red;"></span>
                            <input id="q1a_1" class="wrong" type="radio" name="q1" value="colspan"/>

                            <label for="q1a_2"><code>&lt;td rowspan="2"&gt; Cat &lt;td&gt;</code></label>
                            <span id="a1_2" style="color: Lime;"></span>
                            <input id="q1a_2" class="correct" type="radio" name="q1" value="rowspan"/>
                            

                            <label for="q1a_3"><code>&lt;td cellpadding="200%"&gt; Cat &lt;td&gt;</code></label>
                            <span id="a1_3" style="color: Red;"></span>
                            <input id="q1a_3" class="wrong" type="radio" name="q1" value="cellpadding"/>

                            <label for="q1a_4"><code>&lt;td cellspacing="2"&gt; Cat &lt;td&gt;</code></label>
                            <span id="a1_4" style="color: Red;"></span>
                            <input id="q1a_4" class="wrong" type="radio" name="q1" value="cellspacing"/>

                            <label for="q1a_5"><code>&lt;tr span="2"&gt; Cat &lt;td&gt;</code></label>
                            <span id="a1_5" style="color: Red;"></span>
                            <input id="q1a_5" class="wrong" type="radio" name="q1" value="span"/>
                        </div>
                        <span id="q1Error"></span>
                    </td>
                </tr>

                <tr id="q2">
                    <td>Complete this <code>&lt;ol&gt;</code> opening tag so it's items will be reversed: </td>
                    <td id="q2-answer">
                        <code>&lt;ol type="1" <input id="q2_1" type="text" name="reversed" size="13"/> &gt;</code>
                        <span id="q2_1Error"></span>
                        <span id="a2_1" style="color: Red;"></span>
                        <span id="a2_2" style="color: Lime;"></span>
                    </td>
                </tr>

                <tr id="q3">
                    <td>
                        Make this input more clear, so it will go from this: 
                        <br />
                        <br />
                        <div id="q3_1">
                            <label for="q3_1_1">Enter your birth date:</label>
                            <input id="q3_1_1" type="text"/>
                        </div>

                        to this:
                        <br />
                         <div id="q3_2">
                            <label for="q3_1_2">Enter your birth date:</label>
                            <input id="q3_1_2" type="text" placeholder="e.g: 01/01/2000"/>
                        </div>
                    </td>

                    <td id="q3-answer">
                        <div id="q3Container">
                            <label for="q3a_1"><code>&lt;input type="text" preview="e.g: 01/01/2000" / &gt;</code></label>
                            <span id="a3_1" style="color: Red;"></span>
                            <input id="q3a_1" class="wrong" type="radio" name="q3" value="preview"/>

                            <label for="q3a_2"><code>&lt;input type="text" default="e.g: 01/01/2000" / &gt;</code></label>
                            <span id="a3_2" style="color: Red;"></span>
                            <input id="q3a_2" class="wrong" type="radio" name="q3" value="default"/>

                            <label for="q3a_3"><code>&lt;input type="text" datetime="01/01/2000" / &gt;</code></label>
                            <span id="a3_3" style="color: Red;"></span>
                            <input id="q3a_3" class="wrong" type="radio" name="q3" value="datetime"/>

                            <label for="q3a_4"><code>&lt;input type="text" placeholder="e.g: 01/01/2000" / &gt;</code></label>
                            <span id="a3_4" style="color: Lime;"></span>
                            <input id="q3a_4" class="correct" type="radio" name="q3" value="placeholder"/>

                            <label for="q3a_5"><code>&lt;input type="text" defaultdate="01/01/2000" / &gt;</code></label>
                            <span id="a3_5" style="color: Red;"></span>
                            <input id="q3a_5" class="wrong" type="radio" name="q3" value="defaultdate"/>
                        </div>

                        <span id="q3Error"></span>
                    </td>
                </tr>

                <tr id="q4">
                    <td>
                        Given this image of a cat which alt will be the best to describe it?
                        <img src="./resources/images/cat.jpeg" alt="Choose one"/>
                    </td>
                    <td>
                        <label for="q4-answer">Choose: </label>
                        <select name="q4-answer" id="q4_1">
                                <option class="wrong" value="prompt">Select an answer:</option>
                                <option class="wrong" value="catimg">An Image of a fat cat</option>
                                <option class="wrong" value="img">Image</option>
                                <option class="correct" value="cat">Fat cat</option>
                        </select>
                        <span id="q4_1Error"></span>
                        <span id="a4_1" style="color: Red;"></span>
                        <span id="a4_2" style="color: Lime;"></span>
                    </td>
                </tr>

                <tr id="q5">
                    <td>Choose the valid html tags:</td>
                    <td id="q5-answer">
                        <div id="q5Container">
                            <label for="q5a_1"><code>&lt;html&gt;</code></label>
                            <input id="q5a_1" class="correct" type="checkbox" name="q5" value="html"/>
                            <span id="a5_1_1" style="color: Red;"></span>
                            <span id="a5_1_2" style="color: Lime;"></span>

                            <label for="q5a_2"><code>&lt;bold&gt;</code></label>
                            <input id="q5a_2" class="wrong" type="checkbox" name="q5" value="bold"/>
                            <span id="a5_2_1" style="color: Red;"></span>
                            <span id="a5_2_2" style="color: Lime;"></span>

                            <label for="q5a_3"><code>&lt;strong&gt;</code></label>
                            <input id="q5a_3" class="correct" type="checkbox" name="q5" value="strong"/>
                            <span id="a5_3_1" style="color: Red;"></span>
                            <span id="a5_3_2" style="color: Lime;"></span>

                            <label for="q5a_4"><code>&lt;legend&gt;</code></label>
                            <input id="q5a_4" class="correct" type="checkbox" name="q5" value="legend"/>
                            <span id="a5_4_1" style="color: Red;"></span>
                            <span id="a5_4_2" style="color: Lime;"></span>

                            <label for="q5a_5"><code>&lt;content&gt;</code></label>
                            <input id="q5a_5" class="wrong" type="checkbox" name="q5" value="content"/>
                            <span id="a5_5_1" style="color: Red;"></span>
                            <span id="a5_5_2" style="color: Lime;"></span>
                        </div>

                        <span id="q5Error"></span>
                    </td> 
                </tr>

                <tr id="pointsRow">
                    <td>Amount of points received: </td>
                    <td><b id="points">Not Sumbitted yet</b></td>
                </tr>
                <tr>
                    <td><center><input type="reset" name="reset" value="Reset" onclick="resetAll()"/></center></td>
                    <td><center><input type="button"  name="score" value="Get Score" onclick="checkAll()" /></center></td>
                </tr>
            </tbody>
        </table>
    </form>
</asp:Content>

