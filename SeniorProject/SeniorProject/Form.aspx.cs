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
            Int32 assessmentID = 0;
            SqlConnection conn = new SqlConnection("Server=tcp:quantumsense.database.windows.net,1433;Initial Catalog=DanielsCANS;Persist Security Info=False;User ID=tiffanyn;Password=Quantumsense1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            conn.Open();

            int itemCount = 59;
            int patientID = Int32.Parse(Request.Form["patientID"]);
            string userID = Request.Form["userID"].Trim();

            DateTime currentDay = DateTime.Today;
            string sqlDate = currentDay.Date.ToString("yyyy-MM-dd").Trim();

            string checkDate = string.Format("SELECT COUNT(AssessmentID) FROM ASSESSMENTS WHERE AssessmentDate = '{0}';", sqlDate);
            SqlCommand checkDateSELECT = new SqlCommand(checkDate, conn);
            int dateResult = (int)checkDateSELECT.ExecuteScalar();
            if (dateResult == 1)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('There is already an assessment made for this patient today, do not create another one today for this patient. If you would like to change the assessment already made today, please go to the Past CANS tab to find and update the appropriate assessment.')", true);
            }
            else
            {
                string firstAssessment = string.Format("SELECT COUNT(AssessmentID) FROM ASSESSMENTS WHERE PatientID = {0};", patientID);
                SqlCommand firstAssessmentSELECT = new SqlCommand(firstAssessment, conn);
                int isFirstAssessment = (int)firstAssessmentSELECT.ExecuteScalar();

                if (isFirstAssessment == 0)
                {
                    string assessment = string.Format("INSERT INTO ASSESSMENTS(PatientID, UserID, AssessmentDate, Number) VALUES({0}, '{1}', '{2}', 1); SELECT CAST(SCOPE_IDENTITY() AS INT);", patientID, userID, sqlDate);
                    SqlCommand assessmentINSERT = new SqlCommand(assessment, conn);
                    assessmentID = (Int32)assessmentINSERT.ExecuteScalar();
                }
                else
                {
                    string number = "SELECT TOP 1 Number FROM ASSESSMENTS WHERE PatientID = @patientID ORDER BY Number DESC";
                    var patient = new SqlParameter("patientID", patientID);
                    SqlCommand incrementNumberSELECT = new SqlCommand(number, conn);
                    incrementNumberSELECT.Parameters.Add(patient);
                    int numberIncremented = (int)incrementNumberSELECT.ExecuteScalar();
                    numberIncremented++;
                    incrementNumberSELECT.Parameters.Clear();

                    string assessment = string.Format("INSERT INTO ASSESSMENTS(PatientID, UserID, AssessmentDate, Number) VALUES({0}, '{1}', '{2}', {3}); SELECT CAST(SCOPE_IDENTITY() AS INT);", patientID, userID, sqlDate, numberIncremented);
                    SqlCommand assessmentINSERT = new SqlCommand(assessment, conn);
                    assessmentID = (Int32)assessmentINSERT.ExecuteScalar();
                }

                if (assessmentID == 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Something went wrong with creating the Assessment. Please verify your inputs and try again.')", true);
                }

                int success = 0;
                int total = 0;
                var form = Request.Form;
                for (int i = 1; i <= itemCount; i++)
                {
                    string index = i.ToString();
                    string formValue = Request.Form[index].Trim();
                    int score;
                    if (Int32.TryParse(formValue, out score) == true)
                    {
                        total = total + score;
                        string itemScore = string.Format("INSERT INTO ITEM_SCORE (ItemID, Score, AssessmentID) VALUES ({0}, {1}, {2})", i, score, assessmentID);
                        SqlCommand scoreINSERT = new SqlCommand(itemScore, conn);
                        scoreINSERT.ExecuteNonQuery();
                    }
                    else
                    {
                        string itemNA = string.Format("INSERT INTO ITEM_SCORE (ItemID, AssessmentID) VALUES ({0}, {1})", i, assessmentID);
                        SqlCommand naINSERT = new SqlCommand(itemNA, conn);
                        naINSERT.ExecuteNonQuery();
                    }
                }
                string finalTotal = string.Format("UPDATE ASSESSMENTS SET Total = {0} WHERE AssessmentID={1}", total, assessmentID);
                //var totalParam = new SqlParameter("total", total);
                SqlCommand totalINSERT = new SqlCommand(finalTotal, conn);
                //totalINSERT.Parameters.Add(totalParam);
                //totalINSERT.Parameters.Add(patient);
                success = totalINSERT.ExecuteNonQuery();
                if (success != 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Assessment Created Successfully')", true);
                }
                conn.Close();
            }
        }
    }
}