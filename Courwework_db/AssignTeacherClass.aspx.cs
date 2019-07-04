using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Courwework_db
{
    public partial class AssignTeacherClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ClassCourseBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AssignClass");
        }

        protected void TeachersClassBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AssignTeacherClass");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClassForm");
        }
        
        protected void refresh_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
        }
    }
}