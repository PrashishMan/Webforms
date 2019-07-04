using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Courwework_db
{
    public partial class Staff_Location : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void staff_location_back_id_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeacherDetails");
        }

        protected void createLocationbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Location");
        }
    }
}