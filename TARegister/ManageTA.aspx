<%@ Page Language="C#" Title="ManageTA" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageTA.aspx.cs" Inherits="DCAF.TARegister.MangeTA" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript">

        $(document).ready(function () {
            $("#AddTA").click(function () {
                $('#TADetails').hide();
                $('#AddTA').hide();
                $('#TAAdd').show();
            });

            $("#btnCancel").click(function () {
                $('#TADetails').show();
                $('#AddTA').show();
                $('#TAAdd').hide();

            });
        });

    </script>

    <div style="height: 440px; width: 100%; padding: 10px 20px 10px 20px" runat="server">
        <br />
        <div style="align-self: center; padding-left: 15px; padding-right: 15px;">
            <div style="position: absolute; right: 45px;">
                <input type="button" id="AddTA" class="button_style" value="Add TA">
            </div>
            <br />
            <br />
            <br />
            <div id="TADetails" style="align-self: center; padding-left: 15px; padding-right: 15px;">
                <table id="tblTAList" runat="server" width="90%" style="margin: 0 auto; border: 1px medium; text-align: left;" class="table th td">
                    <tr>
                        <%--<th style="width: 10%">First Name</th>--%>
                        <th style="width: 15%">Name</th>
                        <th style="width: 14%">Email</th>
                        <th style="width: 10%">TA Level</th>
                        <th style="width: 14%">Appointing TA</th>
                        <th style="width: 14%">Discipline</th>
                        <th style="width: 13%">Certificate Status</th>
                        <th style="width: 12%">Certificate Expiry</th>
                        <th style="width: 10%">Actions</th>
                    </tr>
                    <tr>
                        <td>Rama krishna</td>
                        <td>ramakrishna.bachu@shell.com</td>
                        <td>Level 1</td>
                        <td>Vijesh</td>
                        <td>Engineering</td>
                        <td style="color: green">Acquired</td>
                        <td>23/03/2024</td>
                        <td>
                            <%--<asp:ImageButton CssClass="table_img" runat="server" ImageUrl="~/Images/Add_1.png" ToolTip="Add" />--%>
                            <asp:ImageButton CssClass="table_img" runat="server" ImageUrl="~/Images/Edit.png" ToolTip="Edit" />
                            <asp:ImageButton CssClass="table_img" runat="server" ImageUrl="~/Images/Delete.png" ToolTip="Delete" />
                        </td>
                    </tr>
                    <tr>
                        <td>Atul Jha</td>
                        <td>atul.jha@shell.com</td>
                        <td>Level 2</td>
                        <td>Heena Joshi</td>
                        <td>Procurement</td>
                        <td style="color: green">Acquired</td>
                        <td>23/03/2024</td>
                        <td>
                            <%--<asp:ImageButton CssClass="table_img" runat="server" ImageUrl="~/Images/Add_1.png" ToolTip="Add" />--%>
                            <asp:ImageButton CssClass="table_img" runat="server" ImageUrl="~/Images/Edit.png" ToolTip="Edit" />
                            <asp:ImageButton CssClass="table_img" runat="server" ImageUrl="~/Images/Delete.png" ToolTip="Delete" />
                        </td>
                    </tr>
                    <tr>
                        <td>Naidu kannuru</td>
                        <td>naidu.kannuru@shell.com</td>
                        <td>Level 3</td>
                        <td>Sunitha Manne</td>
                        <td>Pipe lines</td>
                        <td style="color: orange">Coming due</td>
                        <td>23/04/2023</td>
                        <td>
                            <%--<asp:ImageButton CssClass="table_img" runat="server" ImageUrl="~/Images/Add_1.png" ToolTip="Add" />--%>
                            <asp:ImageButton CssClass="table_img" runat="server" ImageUrl="~/Images/Edit.png" ToolTip="Edit" />
                            <asp:ImageButton CssClass="table_img" runat="server" ImageUrl="~/Images/Delete.png" ToolTip="Delete" />
                        </td>
                    </tr>
                    <tr>
                        <td>Naveen P</td>
                        <td>naveen.p@shell.com</td>
                        <td>Level 0</td>
                        <td>Sunitha Mukundan</td>
                        <td>Mechanical Engineering</td>
                        <td style="color: red">Expired</td>
                        <td>23/03/2023</td>
                        <td>
                            <%--<asp:ImageButton CssClass="table_img" runat="server" ImageUrl="~/Images/Add_1.png" ToolTip="Add" />--%>
                            <asp:ImageButton CssClass="table_img" runat="server" ImageUrl="~/Images/Edit.png" ToolTip="Edit" />
                            <asp:ImageButton CssClass="table_img" runat="server" ImageUrl="~/Images/Delete.png" ToolTip="Delete" />
                        </td>
                    </tr>
                </table>
            </div>
            <div id="TAAdd" style="position: relative; margin-left:10%; border: 2px; display: none">
                <table id="tblAddTa">
                    <tr style="border-spacing: 10px">
                        <td>
                            <asp:Label runat="server" Width="200px">Name</asp:Label></td>
                        <td>
                            <asp:TextBox runat="server" Width="250px" Height="28px"></asp:TextBox></td>
                    </tr>
                    <tr style="border-spacing: 10px">
                        <td>
                            <asp:Label runat="server" Width="200px">Email</asp:Label></td>
                        <td>
                            <asp:TextBox runat="server" Width="250px" Height="28px"></asp:TextBox></td>
                    </tr>
                    <tr style="border-spacing: 10px">
                        <td>
                            <asp:Label runat="server" Width="200px">TA Level</asp:Label></td>
                        <td>
                            <asp:TextBox runat="server" Width="250px" Height="28px"></asp:TextBox></td>
                    </tr>
                    <tr style="border-spacing: 10px">
                        <td>
                            <asp:Label runat="server" Width="200px">Discipline</asp:Label></td>
                        <td>
                            <asp:TextBox runat="server" Width="250px" Height="28px"></asp:TextBox></td>
                    </tr>
                    <tr style="border-spacing: 10px; margin-bottom:50px">
                        <td>
                            <asp:Label runat="server" Width="200px">Certificate Status</asp:Label></td>
                        <td>
                            <asp:TextBox runat="server" Width="250px" Height="28px"></asp:TextBox></td>
                    </tr>
                    <tr style="border-spacing: 10px;">
                        <td colspan="2" style="align-content: center">
                            <input type="button" id="btnSave" class="button_style" style="margin-right:20px" value="Save">
                            <input type="button" id="btnCancel" class="button_style" value="Cancel">
                        </td>
                        <td></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

</asp:Content>
