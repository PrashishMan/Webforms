﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Courwework_db
{
    public partial class ClassForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        
        protected void BackBtnid_Click1(object sender, EventArgs e)
        {
            Response.Redirect("AssignCLass");
        }
    }
}