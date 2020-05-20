using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Quiz
{
    public partial class addQuestion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            ClearFields();
        }

        private void ClearFields()
        {
            LabelError.Text = "*";
            txtTitle.Text = "";
            txtAnswer1.Text = "";
            txtAnswer2.Text = "";
            txtAnswer3.Text = "";
            txtAnswer4.Text = "";
            txtAnswerExplanation.Text = "";
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            DataClassesOnlineQuizDataContext db = new DataClassesOnlineQuizDataContext();
            // Query the database for the rows to be deleted.
            var queryResults =
                from ques in db.Questions
                where ques.QuestionID == Convert.ToInt16( DropDownListQuestionID .SelectedValue)
                select ques;

            foreach (var detail in queryResults)
            {
                db.Questions.DeleteOnSubmit(detail);
            }

            try
            {
                db.SubmitChanges();
                LabelError.Text = "record deleted";

            }
            catch (Exception exc)
            {
                LabelError.Text = exc.Message;
                // Provide for exceptions.
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
           
           

            DataClassesOnlineQuizDataContext db = new DataClassesOnlineQuizDataContext();
            //check if question title already exists or not
            var queryResults = from ques in db.Questions
                               where ques.Title == txtTitle.Text
                               select ques;
            if (queryResults.Any())
            {
                LabelError.Text = "this question already exists : " + txtTitle.Text;
                return;
            }


            Question question = new Question
            {
                Title = txtTitle.Text,
                Answer1 = txtAnswer1.Text,
                Answer2 = txtAnswer2.Text,
                Answer3=txtAnswer3.Text,
                Answer4=txtAnswer4.Text,
                CorrectAnswer=DropDownListCorrectAnswer.SelectedItem.ToString(),
                AnswerExplanation=txtAnswerExplanation.Text,
                QuestionOrder= Convert.ToByte( txtQuestionOrder.Text),
                QuizID= Convert.ToInt16( DropDownListQuiz.SelectedValue)

                
            };

            db.Questions.InsertOnSubmit(question);
            try
            {
                db.SubmitChanges();
                LabelError.Text = "record saved successfully";
               

            }
            catch (Exception exc)
            {

                LabelError.Text = exc.Message;
            }

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            DataClassesOnlineQuizDataContext db = new DataClassesOnlineQuizDataContext();
            // Query the database for the row to be updated.
            var query =
                        from ques in db.Questions
                        where ques.QuestionID == Convert.ToInt16( DropDownListQuestionID.SelectedValue)
                        select ques;

            // Execute the query, and change the column values
            // you want to change.
            foreach (Question q in query)
            {
                q.Title = txtTitle.Text;
                q.QuestionOrder = Convert.ToByte( txtQuestionOrder.Text);
                q.QuizID = Convert.ToInt16( DropDownListQuiz.SelectedValue);
                q.Answer1 = txtAnswer1.Text;
                q.Answer2 = txtAnswer2.Text;
                q.Answer3 = txtAnswer3.Text;
                q.Answer4 = txtAnswer4.Text;
                q.CorrectAnswer = DropDownListCorrectAnswer.SelectedItem.ToString();
                q.AnswerExplanation = txtAnswerExplanation.Text;

                // Insert any additional changes to column values.
            }

            // Submit the changes to the database.
            try
            {
                db.SubmitChanges();
                LabelError.Text = "record updated successfully!";
            }
            catch (Exception exc)
            {
                LabelError.Text = exc.Message;
               
            }
        }

        protected void DropDownListQuestionID_SelectedIndexChanged(object sender, EventArgs e)
        {
            ShowQuestionDetailsAndBindToControls();

            
        }

        private void ShowQuestionDetailsAndBindToControls()
        {
            DataClassesOnlineQuizDataContext db = new DataClassesOnlineQuizDataContext();
            var queryResults = (from ques in db.Questions
                                where ques.QuestionID == Convert.ToInt16(DropDownListQuestionID.SelectedValue)
                                select ques).ToList();
            if (queryResults.Any())
            {

                txtTitle.Text = queryResults.Select(q => q.Title).First();
                txtAnswer1.Text = queryResults.Select(q => q.Answer1).First();
                txtAnswer2.Text = queryResults.Select(q => q.Answer2).First();
                txtAnswer3.Text = queryResults.Select(q => q.Answer3).First();
                txtAnswer4.Text = queryResults.Select(q => q.Answer4).First();
                DropDownListCorrectAnswer.Text = queryResults.Select(q => q.CorrectAnswer).First();
                txtAnswerExplanation.Text = queryResults.Select(q => q.AnswerExplanation).First();
                txtQuestionOrder.Text = queryResults.Select(q => q.QuestionOrder).First().ToString();
                // DropDownListQuiz.Text = queryResults.Select(q => q.QuizID).ToString();
            }
        }

        protected void DropDownListQuestionID_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void txtTitle_TextChanged(object sender, EventArgs e)
        {

        }
    }
}