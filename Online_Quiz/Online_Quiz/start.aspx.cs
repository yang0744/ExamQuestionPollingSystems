using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Quiz
{
    public partial class start : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArrayList al = new ArrayList();
            Session.Add("AnswerList", al);
            Session.Add("QuizID", 1);

            if (Request.QueryString["testid"] != null)
            {
                int testID = int.Parse(Request.QueryString["testid"]);
                Session.Add("QuizID",testID);
            }
            else
            {
                Response.Redirect("frmDefaultSecond.aspx");
            }
        }

        protected void btnStartQuiz_Click(object sender, EventArgs e)
        {
            Response.Redirect("questions.aspx");
        }
    }
}