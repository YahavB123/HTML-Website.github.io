using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.OleDb;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Response.Redirect("error.aspx");
        }

        if (Request["submit"] != null)
        {

            // תזכורת:
            // post:        string fname = Request.Form["fname"];
            // get:         string fname = Request.QueryString["fname"];
            // post & get:  string fname = Request["fname"];
            // קליטת הנתונים שנשלחו מהטופס:

            string firstName = Request["firstName"];
            string lastName = Request["lastName"];
            string dateYear = Request["dateYear"];
            string email = Request["email"];
            string pwd = Request["pwd"];
            string idNumber = Request["idNumber"];
            string gender = Request["gender"];
            string yearsCoding = Request["yearsCoding"];
            string codingLanguage = Request["codingLanguage"];


            // connectionString בניית
            //מאתר את מיקום מסד הנתונים מהשורש ועד התיקייה בה ממוקם המסד
            String path = Server.MapPath(@"App_Data\db.mdb"); //שם הקובץ
            //נתוני ההתחברות הכוללים מיקום וסוג המסד
            string connectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path;

            // המאפשר קשר לבסיס הנתונים OleDbConnection יצירת אוביקט 
            OleDbConnection conn = new OleDbConnection(connectionString);

            // command יצירת אוביקט פעולה 
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = conn;
            //  בתוך אוביקט הפעולה  select הכנת פקודת
            cmd.CommandText = String.Format("SELECT * FROM users WHERE email='{0}';", email);
            //cmd.CommandText = "SELECT * FROM users WHERE email = '" + email + "'";

            // שליפת הנתונים לתוך אוביקט טבלה
            DataTable dt = new DataTable();
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            da.Fill(dt);

            //מניעת הרשמה כפולה
            if (dt.Rows.Count != 0)
            {
                //כדי לא לחזור לבניית הטופס מחדש פעולה שתמחק את הנתונים
                //כך ניתן לחזור לטופס בעזרת חזור ולמלא את הנתונים

                Response.Write("<p style='color:red'> Email already exist. </p>");
                Response.End();
            }
            else
            {
                // תזכורת:
                // post:        string fname = Request.Form["fname"];
                // get:         string fname = Request.QueryString["fname"];
                // post & get:  string fname = Request["fname"];


                // הכנסת רשומה בודדת לתוך מסד הנתונים
                string sql;
                sql = "INSERT INTO users ";
                sql += " (firstName, lastName, dateYear, email, [pwd], idNumber, gender, yearsCoding, codingLanguage)";
                sql += "VALUES (";
                sql += "'" + firstName + "'";
                sql += ",'" + lastName + "'";
                sql += ",'" + dateYear + "'";
                sql += ",'" + email + "'";
                sql += ",'" + pwd + "'";
                sql += ",'" + idNumber + "'";
                sql += ",'" + gender + "'";
                sql += ",'" + yearsCoding + "'";
                sql += ",'" + codingLanguage + "'";
                sql += ")";


                cmd.CommandText = sql;
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Default.aspx");
            }
        }
    }
}
