using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    public string ProtectedLink = "";
    public string userMsg;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            ProtectedLink = @"
                            <li><a href='./Register.aspx'>Register</a></li>
                            <li><a href='./Login.aspx'>Login</a></li>
            ";
        }   
        else
        {
            ProtectedLink = @"
                            <li class='dropdown-container'>
                            <a href='./Tags.aspx'>Common tags <i class='arrow right'></i></a>
                            <ul class='dropdown'>
                                <li class= 'side-dropdown-container'>
                                    <a href='Lists.aspx'>Lists Tags <i class='arrow right'></i></a>
                                    <ul class='side-dropdown'>
                                        <li><a href='./OL.aspx'>Ordered List Tag</a></li>
                                        <li><a href='./UL.aspx'>Unorderd List Tag</a></li>
                                        <li><a href='./DL.aspx'>Description List Tag</a></li> 
                                    </ul>
                                </li>
                                <li><a href='./Form.aspx'>Form Tag</a></li>
                                <li><a href='./Table.aspx'>Table Tag</a></li>
                                <li><a href='./Img.aspx'>Img Tag</a></li>
                            </ul>
                        </li>

                        <li><a href='./Questionnaire.aspx'>Questionnaire</a></li>
                        <li><a href='./History.aspx'>History</a></li>
                        <li><a href='./Gallery.aspx'>Gallery</a></li>
                        <li><a href='./Links.aspx'>Links</a></li>
            ";
            
            if ((bool)Session["isAdmin"])
            {
                ProtectedLink += "<li><a href='./ShowAllUsers.aspx'>Users</a></li>";
            }
            ProtectedLink += "<li><a href='./Logout.aspx'>Logout</a></li>";
        }



        if (Session["user"] == null)
        {
            userMsg = ("<h4>Your'e <span class='bold'>disconnected<span></h4>");
        }
        else
        {
            userMsg = ("<h4>Welcome, <span class='bold'>" + Session["user"] + ".</span></h4>");
        } 
    }
}
