using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Text;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace SeniorProject
{
    public partial class Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Insert(object sender, EventArgs e)
        {
            Int32 assessmentID=0;
            SqlConnection conn = new SqlConnection("Server=tcp:quantumsense.database.windows.net,1433;Initial Catalog=DanielsCANS;Persist Security Info=False;User ID=tiffanyn;Password=Quantumsense1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;" );
            conn.Open();
            int itemCount = 57;
            int patientID = Int32.Parse(Request.Form["patientID"]);
            string userID = Request.Form["userID"];
            DateTime currentDay = DateTime.Today;
            string assessment = string.Format("INSERT INTO ASSESSMENTS(PatientID, UserID, AssessmentDate) VALUES({0}, {1}, {2}); SELECT CAST(scope_identity() AS int)", patientID, userID, currentDay);
            SqlCommand assessmentINSERT = new SqlCommand(assessment, conn);
            try { 
            assessmentID = (Int32)assessmentINSERT.ExecuteScalar();
            }
            catch (Exception ex)
            {
                    Console.WriteLine(ex.Message);
             }
            for (int i=1; i<=itemCount; i++)
            {
                int score = Int32.Parse(Request.Form[i.ToString()]);
                string itemScore = string.Format("INSERT INTO ITEM_SCORE (ItemID, Score, AssessmentID) VALUES ({0}, {1}, (SELECT AssessmentID FROM ASSESSMENTS WHERE AssessmentDate= {2}))", i, score, currentDay);
                SqlCommand scoreINSERT = new SqlCommand(itemScore, conn);
                scoreINSERT.ExecuteNonQuery();
            }
            conn.Close();
        }

    }
}