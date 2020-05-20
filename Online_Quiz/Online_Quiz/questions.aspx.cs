using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Quiz
{
    public partial class questions : System.Web.UI.Page
    {
       public int counter = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            DetailsViewQuestions.DataBind();
            Session["ExamTime"] = 60;
            //int counter = 60;
            if (!SM1.IsInAsyncPostBack)
                Session["timeout"] = DateTime.Now.AddMinutes(3).ToString();   // add time here by adding minutes
        }
        
        protected void btnNext_Click(object sender, EventArgs e)
        {
            //save previous value
            System.Data.DataRowView dr;
            dr = (System.Data.DataRowView) DetailsViewQuestions.DataItem;

            // create an answer object to save values
            Answer ans = new Answer();
           // ans.QuestionID = DetailsViewQuestions.DataItem.ToString();
            ans.QuestionID = dr["QuestionOrder"].ToString();
            ans.CorrectAnswer = dr["CorrectAnswer"].ToString();
            ans.UserAnswer = DropDownList1.SelectedValue.ToString();

            ArrayList al = new ArrayList();
            al = (ArrayList)Session["AnswerList"];
            al.Add(ans);

            Session.Add("AnswerList", al);

            if (DetailsViewQuestions.PageIndex==DetailsViewQuestions.PageCount-1)
            {
                // go to evaluate answer
                Response.Redirect("results.aspx");
            }
            else
            {
                DetailsViewQuestions.PageIndex += 1;
            }

            if (DetailsViewQuestions.PageIndex==DetailsViewQuestions.PageCount-1)
            {
                btnNext.Text = "Finished";
              //  btnNext.Font.Size = 20;   //increasing size
            }


        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            // lblTime.Text = System.DateTime.Now.ToString("ss");   //hh:mm:ss

            //if (Session["ExamTime"]!=null)
            //{
            //    lblTime.Text = Session["ExamTime"].ToString(); 
            //}
            //lblTime.Text = counter.ToString();
            //int i = (Convert.ToInt16(lblTime.Text));
            //i = i - 1;
            //lblTime.Text = i.ToString();
            //if (i < 0)
            //{
            //    //Time up hide the button
            //    lblTime.ForeColor = System.Drawing.Color.Red;

            //}

            //if (counter != 0)
            //{
            //    counter--;

            //    lblTime.Text = "00:" + counter.ToString();
            //    txtTime.Text = "00" + counter.ToString();
            //}
            //else
            //{
            //    // Change Question & Check Your Answer


            //}
            if (lblTime.Text== "Number of Minutes Left: 0")
            {
                lblTime.Text = "time is over";
                lblTime.ForeColor = System.Drawing.Color.Red;

                
                Response.Redirect("~/TimesUp.html");
                return;
            } 
            if (0 > DateTime.Compare(DateTime.Now,
        DateTime.Parse(Session["timeout"].ToString())))
            {
                lblTime.Text = "Number of Minutes Left: " +
                ((Int32)DateTime.Parse(Session["timeout"].
                ToString()).Subtract(DateTime.Now).TotalMinutes).ToString();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DetailsViewQuestions_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }

    //class Answers
    //{
    //    public string Result { get; set; }
    //    public string UserAnswer { get; set; }
    //    public string CorrectAnswer { get; set; }
    //    public string QuestionId { get; set; }
    //}   
       
}