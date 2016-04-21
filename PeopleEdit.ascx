<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PeopleEdit.ascx.cs" Inherits="TCL.EP.BPM.ASPX.UserControl.PeopleEdit" %>
<table cellpadding="0" cellspacing="0">
    <tr>
        <td><asp:TextBox ID="txtUserSelectInfo" runat="server"></asp:TextBox></td>
        <td style="padding-left: 5px;"><img id="imgOpenSelectUserDialog" class="bpm-people-select"  runat="server" src="../Images/addressbook.gif"/></td>
    </tr>
</table>
<asp:HiddenField runat="server" Value="" ID="hid_SelectedValue"/>
<script type="text/javascript">
    function <%=txtUserSelectInfo.ClientID%>ImageClick() {
        var selectText = $("#<%=txtUserSelectInfo.ClientID %>").val();
        var selectValue = $("#<%=hid_SelectedValue.ClientID %>").val();
        var dialogWidth = 706;
        var dialogHeight = 540;
        var dialogTop = (window.screen.height - dialogHeight) / 2;
        var dialogLeft = (window.screen.width - dialogWidth) / 2;
        var win = window.open('../PeopleEdit/SelectUsers.aspx?singleSelect=true&functionName=<%=CallBackFunction%>&selectText=' + selectText + '&selectValue=' + selectValue + '&isdlg=1&txtID=<%=txtUserSelectInfo.ClientID%>&type=<%=SelectType%>&key=<%=ReturnDataType%>&valueID=<%=hid_SelectedValue.ClientID%>',
            '', 'height=' + dialogHeight + ',width=' + dialogWidth + ',top=' + dialogTop + ',left=' + dialogLeft + ',toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no');
//        setTimeout(function() {
//            win.runCallbackFunction = <%=CallBackFunction %>;
//        }, 1000);
    }
    $("#<%=imgOpenSelectUserDialog.ClientID %>").click(function() {
        <%=txtUserSelectInfo.ClientID%>ImageClick();
    });
</script>
