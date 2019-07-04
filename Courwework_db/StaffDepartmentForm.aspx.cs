using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Courwework_db
{
    public partial class StaffDepartmentForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void role_back_id_Click(object sender, EventArgs e)
        {
            
        }

        protected void staff_department_back_id_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeacherDetails");
        }
    }
}