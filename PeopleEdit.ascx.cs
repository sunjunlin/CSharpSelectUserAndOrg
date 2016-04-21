using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TCL.EP.BPM.ASPX.UserControl
{
    public partial class PeopleEdit : System.Web.UI.UserControl
    {
        #region 属性
        public string SelectType { get; set; }

        public string ReturnDataType { get; set; }

        public string SelectedValue
        {
            get { return this.hid_SelectedValue.Value.Trim(); }
            set { this.hid_SelectedValue.Value = value; }
        }

        public string SelectedText
        {
            get { return this.txtUserSelectInfo.Text.Trim(); }
            set { this.txtUserSelectInfo.Text = value; }
        }

        public string CallBackFunction
        {
            get; set;
        }

        public string Class { get; set; }

        public int Width { get; set; }

        public int Height { get; set; }
        #endregion 属性

        #region 构造函数
        public PeopleEdit()
            : base()
        {
            Height = 17;
            Width = 200;
            Class = "bpm-peopleidit";
        }
        #endregion 构造函数

        #region 事件
        protected void Page_Load(object sender, EventArgs e)
        {
            this.txtUserSelectInfo.CssClass = Class;
            this.txtUserSelectInfo.Width = Width;
            this.txtUserSelectInfo.Height = Height;
        }
        #endregion 事件
    }
}