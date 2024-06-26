using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.OleDb;

public partial class ShowAllUsers : System.Web.UI.Page
{
    public string usersList;
    public string usersCount;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null || !(bool)Session["isAdmin"])
        {
            Response.Redirect("Error.aspx");
        }

        String path = Server.MapPath(@"App_Data\db.mdb"); //שם הקובץ
        string connectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path;

        // יצירת קשר לבסיס הנתונים
        OleDbConnection conn = new OleDbConnection(connectionString);

        // select הכנת פקודת
        OleDbCommand cmd = new OleDbCommand();
        cmd.Connection = conn;
        cmd.CommandText = "Select * from users;"; // שאילתת בחירה

        // שליפת הנתונים לתוך אוביקט טבלה
        DataTable dt = new DataTable();
        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        da.Fill(dt);

        int length = dt.Rows.Count; // מספר הרשומות בטבלה
        if (length > 0)// אם נמצאו רשומות
        {
            usersList = @"
                        <table width='100%' class='smallerHeads'>
                            <tr>
                                <th>First Name</th>  
                                <th>Last Name</th>  
                                <th>Year Of Birth Name</th>  
                                <th>Email</th>  
                                <th>Password</th>  
                                <th>Id NUmber</th>  
                                <th>Gender</th>  
                                <th>Years Coding</th> 
                                <th>Fav Coding Language</th> 
                                <th>Is Admin</th> 
                            </tr>
                        ";  
            for (int i = 0; i < length; i++) // הדפסת הרשומות
            { // הדפסת כל הרשומות בטבלה
                usersList += String.Format(@"
                                <tr>
                                    <td>{0}</td>  
                                    <td>{1}</td>  
                                    <td>{2}</td>  
                                    <td>{3}</td>  
                                    <td>{4}</td>  
                                    <td>{5}</td>  
                                    <td>{6}</td>  
                                    <td>{7}</td> 
                                    <td>{8}</td> 
                                    <td>{9}</td> 
                                </tr>
                            ",
                            dt.Rows[i]["firstName"], dt.Rows[i]["lastName"], dt.Rows[i]["dateYear"],
                            dt.Rows[i]["email"], dt.Rows[i]["pwd"], dt.Rows[i]["idNumber"],
                            dt.Rows[i]["gender"], dt.Rows[i]["yearsCoding"],
                            dt.Rows[i]["codingLanguage"], dt.Rows[i]["isAdmin"]);
            }
            usersList += "</table>";// סגירת טבלה
            usersCount = "<h2>Users count: " + length.ToString() + "</h2>";
        }
    } 
}
