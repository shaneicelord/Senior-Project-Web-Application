using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SeniorProject
{

    public partial class List : System.Web.UI.Page
    {
        private void GetControlList<T>(ControlCollection controlCollection, List<T> resultCollection)
        where T : Control
        {
            foreach (Control control in controlCollection)
            {
                //if (control.GetType() == typeof(T))
                if (control is T) // This is cleaner
                    resultCollection.Add((T)control);

                if (control.HasControls())
                    GetControlList(control.Controls, resultCollection);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Retrieve(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Server=tcp:quantumsense.database.windows.net,1433;Initial Catalog=DanielsCANS;Persist Security Info=False;User ID=tiffanyn;Password=Quantumsense1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            conn.Open();
            int itemCount = 25;
            SqlDataReader reader = null;
            string patientID = Request.Form["patientID"];
            IFormatProvider culture = System.Threading.Thread.CurrentThread.CurrentCulture;
            string date = Request.Form["date"];
            DateTime dt = DateTime.Parse(date, culture, System.Globalization.DateTimeStyles.AssumeLocal);
            string sqlDate = dt.Date.ToString("yyyy-MM-dd").Trim();
            showingID.Value = patientID;
            showingDate.Value = sqlDate;

            string assessment = string.Format("SELECT Score FROM ITEM_SCORE WHERE AssessmentID = (SELECT AssessmentID FROM ASSESSMENTS WHERE PatientID= {0} AND AssessmentDate='{1}')", patientID, sqlDate);
            SqlCommand retrieve = new SqlCommand(assessment, conn);
            reader = retrieve.ExecuteReader();
            //int i = 0;
            List<TextBox> allTb = new List<TextBox>();
            GetControlList<TextBox>(Page.Form.Controls, allTb);
            while (reader.Read())
            {
                foreach (var x in allTb)
                {
                    if (x is TextBox && x.ID.StartsWith("Q"))
                    {
                        (x as TextBox).Text = reader["Score"].ToString();
                        //i++;
                    }
                }
            }


        }

        protected void Update(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Server=tcp:quantumsense.database.windows.net,1433;Initial Catalog=DanielsCANS;Persist Security Info=False;User ID=tiffanyn;Password=Quantumsense1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            conn.Open();

            int itemCount = 25;
            string patientID = Request.Form["patientID"];
            IFormatProvider culture = System.Threading.Thread.CurrentThread.CurrentCulture;
            string date = Request.Form["date"];
            DateTime dt = DateTime.Parse(date, culture, System.Globalization.DateTimeStyles.AssumeLocal);
            string sqlDate = dt.Date.ToString("yyyy-MM-dd").Trim();

            List<TextBox> allTb = new List<TextBox>();
            GetControlList<TextBox>(Page.Form.Controls, allTb);
            int i = 1;
            foreach (var x in allTb)
            {
                if (x is TextBox && x.ID.StartsWith("Q"))
                {
                    var queryDate = new SqlParameter("date", sqlDate);
                    var index = new SqlParameter("index", i);
                    var patient = new SqlParameter("patientID", patientID);
                    var score = new SqlParameter("score", Int32.Parse(x.Text));
                    string update = "UPDATE ITEM_SCORE SET Score = @score WHERE ItemID = @index AND AssessmentID IN (SELECT AssessmentID FROM ASSESSMENTS WHERE PatientID= @patientID AND AssessmentDate=@date)";
                    SqlCommand updateScore = new SqlCommand(update, conn);
                    updateScore.Parameters.Add(patient);
                    updateScore.Parameters.Add(index);
                    updateScore.Parameters.Add(score);
                    updateScore.Parameters.Add(queryDate);
                    updateScore.ExecuteNonQuery();
                }

            }
        }
    }
}