using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Courwework_db
{
    public partial class TeacherDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void staff_location_id_Click(object sender, EventArgs e)
        {
            Response.Redirect("Staff_Location");
        }

        protected void staff_department_id_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffDepartmentForm");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("STAFF_Member_form");
        }
    }
}