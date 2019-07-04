using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Courwework_db
{
    public partial class CourseDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        
        protected void Course_Assignment_BTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("AssignmentsForm");
        }

        protected void courseteacherassignmentBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeacherCourseEntries");
        }
    }
}