using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Courwework_db
{
    public partial class StudentDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("STUDENT_MEMBER_FORM.aspx");
        }

        protected void studentAssignmentBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentAssignmentEntry");
        }

        protected void studentCourseBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentCourseEntry");
        }

        protected void StudentCourseEnrollBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("CourseEnrollment");
        }
    }
}