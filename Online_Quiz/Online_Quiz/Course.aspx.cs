using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Quiz
{
    public partial class Course : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            LabelError.Text = "*";
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            DataClassesOnlineQuizDataContext db = new DataClassesOnlineQuizDataContext();
            Course course = new Course 
            { 
                CourseName = txtName.Text
            };

            db.Courses.InsertOnSubmit(course);
            try
            {
                db.SubmitChanges();
                LabelError.Text = "record saved successfully";
               
            }
            catch (Exception exc)
            {

                LabelError.Text = exc.ToString();
            }


        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            DataClassesOnlineQuizDataContext db = new DataClassesOnlineQuizDataContext();
            int CourseID;
            CourseID = Convert.ToInt16( cboCourseID.SelectedValue);
            // Query the database for the row to be updated.
                 var query =
                            from course in db.Courses
                            where course.CourseID== CourseID
                            select course;
                 // Execute the query, and change the column values
                 // you want to change.
                 foreach (Course crs in query)
                 {
                     crs.CourseName = txtName.Text;
                     
                     // Insert any additional changes to column values.
                 }
                 // Submit the changes to the database.
                 try
                 {
                     db.SubmitChanges();
                     LabelError.Text = "updated successfully";
                 }
                 catch (Exception exc)
                 {
                     LabelError.Text = exc.ToString();
                     // Provide for exceptions.
                 }

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            DataClassesOnlineQuizDataContext db = new DataClassesOnlineQuizDataContext();
            // Query the database for the rows to be deleted.
            var queryResults =
                from course in db.Courses
                where course.CourseID == Convert.ToInt16(cboCourseID.SelectedValue)
                select course;

            foreach (var detail in queryResults)
            {
                db.Courses.DeleteOnSubmit(detail);
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
    }
}