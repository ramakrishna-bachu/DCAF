using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace DCAF.TARegister
{
    public partial class AddTa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlAnchor hyperLink = (HtmlAnchor)Page.Master.FindControl("mnuAddTA");
            hyperLink.Attributes.Add("class", "active");

            HtmlAnchor hyperLink1 = (HtmlAnchor)Page.Master.FindControl("mnuTARegister");
            hyperLink1.Attributes.Remove("class");
            HtmlAnchor hyperLink2 = (HtmlAnchor)Page.Master.FindControl("mnuManageTA");
            hyperLink2.Attributes.Remove("class");
            HtmlAnchor hyperLink3 = (HtmlAnchor)Page.Master.FindControl("mnuBulkInsertTA");
            hyperLink3.Attributes.Remove("class");

            
        }
    }
}