using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Courwework_db
{
    public partial class TeacherCourseForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void CreateRoleBtn_Click1(object sender, EventArgs e)
        {
            Response.Redirect("TeacherCourseEntries");
        }
    }
}