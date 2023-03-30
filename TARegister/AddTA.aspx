<%@ Page Language="C#" Title="Add TA" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddTA.aspx.cs" Inherits="DCAF.TARegister.AddTa" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 440px; width: 100%; padding: 10px 20px 10px 20px" runat="server">
        <br />
        <div style="align-self: center; padding-left: 15px; padding-right: 15px;">

            <div id="TAAdd" style="position: relative; margin-left: 10%; border: 2px; float: left">
                <table id="tblAddTa">
                    <tr style="border-spacing: 10px">
                        <td>
                            <asp:Label runat="server" Width="200px">Name</asp:Label></td>
                        <td>
                            <asp:TextBox runat="server" Width="250px" Height="26px"></asp:TextBox></td>
                    </tr>
                    <tr style="border-spacing: 10px">
                        <td>
                            <asp:Label runat="server" Width="200px">Email</asp:Label></td>
                        <td>
                            <asp:TextBox runat="server" Width="250px" Height="26px"></asp:TextBox></td>
                    </tr>
                    <tr style="border-spacing: 10px">
                        <td>
                            <asp:Label runat="server" Width="200px">TA Level</asp:Label></td>
                        <td>
                            <%--<asp:TextBox runat="server" Width="250px" Height="28px"></asp:TextBox></td>--%>
                            <asp:DropDownList runat="server" Width="250px" Height="26px">
                                <asp:ListItem Text="--Select--" Value="0" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Appointing TA" Value="1"></asp:ListItem>
                                <asp:ListItem Text="TA 0" Value="2"></asp:ListItem>
                                <asp:ListItem Text="TA 1" Value="3"></asp:ListItem>
                                <asp:ListItem Text="TA 2" Value="4"></asp:ListItem>
                                <asp:ListItem Text="TA 3" Value="5"></asp:ListItem>
                            </asp:DropDownList>
                    </tr>
                    <tr style="border-spacing: 10px">
                        <td>
                            <asp:Label runat="server" Width="200px">Discipline</asp:Label></td>
                        <td>
                            <asp:DropDownList ID="flddlDiscipline" runat="server" Style="height: 26px" Width="250px">
                                <asp:ListItem Text="--Select--" Value="0" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Engineering" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Mechanical Engineering" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Pipe Lines" Value="3"></asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr style="border-spacing: 10px; margin-bottom: 50px">
                        <td>
                            <asp:Label runat="server" Width="200px">Certificate Status</asp:Label></td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" Style="height: 26px" Width="250px">
                                <asp:ListItem Text="--Select--" Value="0" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Acquired" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Coming Due" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Expired" Value="3"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>

                    <tr style="border-spacing: 20px;">
                        <td colspan="2" style="align-content: center">
                            <input type="button" id="btnSave" class="button_style" style="margin-right: 20px" value="Save">
                            <input type="button" id="btnCancel" class="button_style" value="Cancel">
                        </td>
                        <td></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
