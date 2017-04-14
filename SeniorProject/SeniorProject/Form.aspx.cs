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

            int itemCount = 85;
            int patientID = Int32.Parse(Request.Form["patientID"]);
            string userID = Request.Form["userID"].Trim();

            DateTime currentDay = DateTime.Today;
            string sqlDate = currentDay.Date.ToString("yyyy-MM-dd").Trim();

            string number = "SELECT Number FROM ASSESSMENTS WHERE PatientID=@patientID";
            var patient = new SqlParameter("patientID", patientID);
            SqlCommand incrementNumberSELECT = new SqlCommand(number, conn);
            incrementNumberSELECT.Parameters.Add(patient);
            int numberIncremented = (int)incrementNumberSELECT.ExecuteScalar();
            numberIncremented++;

            string assessment = string.Format("INSERT INTO ASSESSMENTS(PatientID, UserID, AssessmentDate, Number) VALUES({0}, '{1}', '{2}', {3}); SELECT CAST(SCOPE_IDENTITY() AS INT);", patientID, userID, sqlDate, numberIncremented);
            SqlCommand assessmentINSERT = new SqlCommand(assessment, conn);
            assessmentID = (Int32)assessmentINSERT.ExecuteScalar();

            int total = 0;
            var form = Request.Form;
            for (int i=1; i<=itemCount; i++)
            {
                string index = i.ToString();
                string formValue = Request.Form[index].Trim();
                int score;
                Int32.TryParse(formValue, out score);
                total = total + score; 
                string itemScore = string.Format("INSERT INTO ITEM_SCORE (ItemID, Score, AssessmentID) VALUES ({0}, {1}, (SELECT AssessmentID FROM ASSESSMENTS WHERE AssessmentDate= '{2}'))", i, score, sqlDate);
                SqlCommand scoreINSERT = new SqlCommand(itemScore, conn);
                scoreINSERT.ExecuteNonQuery();
            }
            string finalTotal = "INSERT INTO ASSESSMENT (Total) VALUES (@total) WHERE PatientID=@patientID";
            var totalParam = new SqlParameter("total", total);
            SqlCommand totalINSERT = new SqlCommand(finalTotal, conn);
            totalINSERT.Parameters.Add(totalParam);
            totalINSERT.ExecuteNonQuery(); 
            conn.Close();
        }

    }
}