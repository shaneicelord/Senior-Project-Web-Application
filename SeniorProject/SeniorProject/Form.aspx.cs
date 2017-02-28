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
            SqlConnection conn = new SqlConnection("Data Source=tcp:quantumsense.database.windows.net,1433;Initial Catalog=DanielsCANS;Persist Security Info=False;User ID=tiffanyn;Password=***********;MultipleActiveResultSets=False;Connect Timeout=30;Encrypt=True;TrustServerCertificate=False");
            conn.Open();
            int itemCount = 57;
            string patientID = Request.Form["patientID"];
            string userID = Request.Form["userID"];
            DateTime currentDay = DateTime.Today;
            string assessment = string.Format("INSERT INTO ASSESSMENTS(PatientID, UserID, AssessmentDate) output INSERTED.AssessmentID VALUES({0}, {1}, {2})", patientID, userID, currentDay);
            SqlCommand assessmentINSERT = new SqlCommand(assessment, conn);
            int assessmentID = (int)assessmentINSERT.ExecuteScalar();
            for (int i=1; i<=itemCount; i++)
            {
                int score = Int32.Parse(Request.Form[i.ToString()]);
                string itemScore = string.Format("INSERT INTO ITEM_SCORE (AssessmentID, ItemID, Score) VALUES ({0}, {1}, {2})", assessmentID, i, score);
                SqlCommand scoreINSERT = new SqlCommand(itemScore, conn);
                scoreINSERT.ExecuteNonQuery();
            }
            conn.Close();
        }

    }
}