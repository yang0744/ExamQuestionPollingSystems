using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Quiz
{
    public partial class results : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArrayList al = (ArrayList)Session["AnswerList"];
            GridView1.DataSource = al;
            GridView1.DataBind();
            //save the result into DB
            if (IsPostBack==false)
            {
                //calculate score
                double questions = al.Count;
                double correct = 0.0;



                for (int i = 0; i < al.Count ; i++)
                {
                    Answer a = (Answer)al[i];
                    if (a.Result == Answer.ResultValue.Correct)
                    {
                        correct++;
                    }
                }

                double score = (correct / questions) * 100;

                SqlDataSource test = new SqlDataSource();
               // test.ConnectionString = ConfigurationManager.ConnectionStrings["Data Source=DESKTOP-V5N37D7;Initial Catalog=OnlineQuiz;Integrated Security=True"].ToString();
                test.ConnectionString = @"Data Source=ASUS\SQLEXPRESS;Initial Catalog=OnlineQuiz;Integrated Security=True";
                test.InsertCommand = "INSERT INTO [UserQuiz]([QuizID],[DateTimeCompleted],[CorrectAnswerCount],[UserName],[Score]) values(@QuizID,@DateTimeCompleted,@CorrectAnswerCount,@UserName,@Score)";

                test.InsertParameters.Add("QuizID", Session["QuizID"].ToString());
                test.InsertParameters.Add("DateTimeCompleted", DateTime.Now.ToString());
                test.InsertParameters.Add("CorrectAnswerCount", "12");
                test.InsertParameters.Add("UserName", User.Identity.Name);
                test.InsertParameters.Add("Score", score.ToString());
               // test.Insert();
                int rowsAffected = test.Insert();
                if (rowsAffected==0)
                {
                    //now we have to notify that insertion did not work
                    LabelError.Text = "there was a problem in saving the data. because of this problem this quiz's result will not be displayed in the main menu";
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataSource1.FilterExpression = "QuestionID" + GridView1.SelectedValue.ToString();
        }

        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SendEmail.aspx");
        }
    }
}