using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace DCAF.TA_Register
{
    public partial class TAList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlAnchor hyperLink = (HtmlAnchor)Page.Master.FindControl("mnuTARegister");
            hyperLink.Attributes.Add("class", "active");
           
            HtmlAnchor hyperLink1 = (HtmlAnchor)Page.Master.FindControl("mnuManageTA");
            hyperLink1.Attributes.Remove("class");
            HtmlAnchor hyperLink2 = (HtmlAnchor)Page.Master.FindControl("mnuBulkInsertTA");
            hyperLink2.Attributes.Remove("class");
            HtmlAnchor hyperLink3 = (HtmlAnchor)Page.Master.FindControl("mnuAddTA");
            hyperLink3.Attributes.Remove("class");

        }
        
    }
}