using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.OleDb;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Response.Redirect("error.aspx");
        }

        if (Request.Form["submit"] != null)
        {

            // תזכורת:
            // post:        string fname = Request.Form["fname"];
            // get:         string fname = Request.QueryString["fname"];
            // post & get:  string fname = Request["fname"];
            // קליטת הנתונים שנשלחו מהטופס:

            string email = Request["email"];
            string pwd = Request["pwd"];

            String path = Server.MapPath(@"App_Data\db.mdb"); //שם הקובץ
            string connectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;

            // יצירת קשר לבסיס הנתונים
            OleDbConnection conn = new OleDbConnection(connectionString);

            // select הכנת פקודת
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = conn;
            string selectQuery = String.Format("Select * from users where email='{0}' AND pwd = '{1}';", email, pwd);
            cmd.CommandText = selectQuery;

            // שליפת הנתונים לתוך אוביקט טבלה
            DataTable dt = new DataTable();
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            da.Fill(dt);

            //בדיקה האם קיימות רשומות
            if (dt.Rows.Count != 0)
            {
                // המשתמש קיים באתר והסיסמה נכונה
                Session["email"] = dt.Rows[0]["email"];
                Session["isAdmin"] = dt.Rows[0]["isAdmin"];
                if ((bool)Session["isAdmin"])
                {
                    Session["user"] = "Admin";
                }
                else
                {
                    Session["user"] = (string)dt.Rows[0]["firstName"] + " " + (string)dt.Rows[0]["lastName"];
                }
                


                Response.Redirect("Default.aspx");//משתמש יועבר לדף ראשי
            }
            else
            { // המשתמש לא קיים באתר או שהסיסמה שגויה
                Response.Write("<p style='color:red'>Wrong email or password</p>");
                Response.End();
            }
        }
    }
}