using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DCAF
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            mnSelected.Value=mnSelected.Value.ToString();
        }
        public string SelectedMenuPropertyOnMasterPage
        {
            get
            {
                // Get value of control on master page  
                return mnSelected.Value;
            }
            set
            {
                // Set new value for control on master page  
                mnSelected.Value = value;
            }
        }
        protected void htmlanchor_ServerClick(string controlId)
        {
            Response.Write(controlId); // This will print id of anchor button you clicked
        }
    }

}