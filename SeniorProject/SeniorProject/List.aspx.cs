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
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Retrieve(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=tcp:quantumsense.database.windows.net,1433;Initial Catalog=DanielsCANS;Persist Security Info=False;User ID=tiffanyn;Password=***********;MultipleActiveResultSets=False;Connect Timeout=30;Encrypt=True;TrustServerCertificate=False");
            conn.Open();
            int itemCount = 57; 
            SqlDataReader reader = null;
            string patientID = Request.Form["patientID"];
            IFormatProvider culture = System.Threading.Thread.CurrentThread.CurrentCulture;
            string date = Request.Form["date"];
            DateTime dt = DateTime.Parse(date, culture, System.Globalization.DateTimeStyles.AssumeLocal);
            showingID.Value = patientID;
            showingDate.Value = showingDate.ToString();
            string assessment = string.Format("SELECT Score FROM ITEM_SCORE WHERE AssessmentID IN (SELECT AssessmentID FROM ASSESSMENTS WHERE PatientID= {0} AND AssessmentDate={1})", patientID, dt);
            SqlCommand retrieve = new SqlCommand(assessment, conn);
            reader = retrieve.ExecuteReader();
            int i = 0; 
            foreach (var tb in this.Controls.OfType<TextBox>())
             {
                if (tb.ID != "patientID" && tb.ID!= "date" && tb.ID != "showingDate" && tb.ID != "showingID")
                {
                    tb.Text = reader.GetString(i);
                    i++;
                }
             }
            
                

         }
    }
}