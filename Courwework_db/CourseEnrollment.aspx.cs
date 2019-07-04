using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Courwework_db
{
    public partial class CourseEnrollment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void enrollment_back_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentDetails");
        }

        protected void refresh_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
        }
    }
}