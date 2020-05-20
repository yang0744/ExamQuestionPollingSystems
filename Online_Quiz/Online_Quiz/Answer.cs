using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Quiz
{
    public class Answer
    {
        private string m_QuestionID;
        private string m_CorrectAnswer;
        private string m_UserAnswer;
        private string m_Result;

        public string QuestionID
        {
            
                                 get {return m_QuestionID;}
                                 set {  m_QuestionID = value;}
        }

        public string CorrectAnswer 
        {
            get { return m_CorrectAnswer; } 
            set{m_CorrectAnswer = value;} 
        }

        public ResultValue Result
        { 
            get {
                    if (m_UserAnswer==m_CorrectAnswer)
	                    {
                            return ResultValue.Correct;
	                    }
                else
	                    {
                            return ResultValue.Incorrect ;
	                    }
                    ;
                 }
            
        }

        public string UserAnswer
        { 
            get{ return m_UserAnswer;}
            set { m_UserAnswer=value ;} 
        }

        public enum ResultValue { Correct, Incorrect };

    }
}