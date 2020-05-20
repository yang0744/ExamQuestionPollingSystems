using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Quiz
{
    public partial class QuizProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            txtTitle.Text = "";
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            DataClassesOnlineQuizDataContext db = new DataClassesOnlineQuizDataContext();
            // Query the database for the rows to be deleted.
            var queryResults = from quiz in db.Quizs
                               where quiz.QuizID == Convert.ToInt16( DropDownListQuizID.SelectedValue )
                               select quiz;
                                

            foreach (var detail in queryResults)
            {
                db.Quizs.DeleteOnSubmit(detail);
            }

            try
            {
                db.SubmitChanges();
                LabelMessage.Text = "record deleted";
                LabelMessage.ForeColor = System.Drawing.Color.Green;

            }
            catch (Exception exc)
            {
                LabelMessage.Text = exc.Message;
                // Provide for exceptions.
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            DataClassesOnlineQuizDataContext db = new DataClassesOnlineQuizDataContext();
            Quiz quiz = new Quiz
            {
                Title = txtTitle.Text,
                CourseID = Convert.ToInt16(DropDownListCourse.SelectedValue),
                CourseName = DropDownListCourse.SelectedItem.ToString()
            };

            db.Quizs.InsertOnSubmit(quiz);
            try
            {
                db.SubmitChanges();
                LabelMessage.Text = "record saved successfully";
                LabelMessage.ForeColor = System.Drawing.Color.Green;

            }
            catch (Exception exc)
            {

                LabelMessage.Text = exc.ToString();
            }

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            DataClassesOnlineQuizDataContext db = new DataClassesOnlineQuizDataContext();
            int quizID;
            quizID = Convert.ToInt16(DropDownListQuizID.SelectedValue);
            // Query the database for the row to be updated.
            var query =
                       from quiz in db.Quizs
                       where quiz.QuizID == quizID
                       select quiz;
            // Execute the query, and change the column values
            // you want to change.
            foreach (Quiz quiz in query)
            {
                quiz.Title = txtTitle.Text ;
                quiz.CourseName = DropDownListCourse.SelectedItem.ToString();
                quiz.CourseID = Convert.ToInt16( DropDownListCourse.SelectedValue);

                // Insert any additional changes to column values.
            }
            // Submit the changes to the database.
            try
            {
                db.SubmitChanges();
                LabelMessage.Text = "updated successfully";
                LabelMessage.ForeColor = System.Drawing.Color.Green;
            }
            catch (Exception exc)
            {
                LabelMessage.Text = exc.ToString();
                // Provide for exceptions.
            }

        }
    }
}