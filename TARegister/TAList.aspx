<%@ Page Language="C#" Title="TAList" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="TAList.aspx.cs" Inherits="DCAF.TA_Register.TAList" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {
            $("#MainContent_imgBtnFilter").click(function (e) {
                //alert('hi');
                //var ta = $("#MainContent_fltxtFname").val().toLowerCase();
                //alert(ta);


                //$("#MainContent_tblTAList tr").filter(function () {
                //    var number = $(this).text().toLowerCase().indexOf(value);
                //    alert(number);
                //    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                //});
                //$('#MainContent_tblTAList').find('tr:last').hide();

                //alert($('#MainContent_tblTAList').find('tr:eq(2)'));
                $('#MainContent_tblTAList').find('tr:eq(2)').hide();
                $('#MainContent_tblTAList').find('tr:eq(3)').hide();
                $('#MainContent_tblTAList').find('tr:eq(4)').hide();
                //$('#MainContent_tblTAList').hide();
                e.preventDefault();
            });

            $("#MainContent_imgBtnFilterSave").click(function (e) {
                var title = "Greetings";
                var body = "Welcome to ASPSnippets.com";
                alert();
                $("#MyPopup .modal-title").html(title);
                $("#MyPopup .modal-body").html(body);
                $("#MyPopup").modal("show");
            });

        });

    </script>

    <div style="height: 440px; width: 100%; padding: 10px 20px 10px 20px" runat="server">
        <br />

        <div style="align-self: center; padding-left: 15px; padding-right: 15px;">
            <div style="margin-bottom: 30px; padding-left: 15px;" id="dvSavedFilter">
                <asp:Label runat="server" Width="100px" CssClass="label_Text">Saved Filters</asp:Label>
                <asp:DropDownList runat="server" Width="250px" Height="26px" CssClass="label_Text dropdown-saved-filter">
                    <asp:ListItem Text="--Select--" Value="0" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="My filter 1" Value="1"></asp:ListItem>
                    <asp:ListItem Text="My filter 2" Value="2"></asp:ListItem>
                    <asp:ListItem Text="My filter 3" Value="3"></asp:ListItem>
                    <asp:ListItem Text="My filter 4" Value="4"></asp:ListItem>
                    <asp:ListItem Text="My filter 5" Value="5"></asp:ListItem>
                </asp:DropDownList>
                <asp:Label runat="server" Width="100px" CssClass="label_Text">Filter Name</asp:Label>
                 <asp:TextBox runat="server" Width="250px" CssClass="label_Text textBox-save-filter" Height="24px"></asp:TextBox>
                 <asp:Button ID="btnSaveFilter" runat="server" Text="Save Filter" Height="24px" CssClass="button_style" />
            </div>
            <%-- <div style="margin-bottom: 30px; padding-left: 15px;" id="dvSaveFilter">
                 
            </div>--%>
            <div>
                <table id="tblTAList" runat="server" width="90%" style="margin: 0 auto; border: 1px medium; text-align: left;" class="table th td">
                    <tr>
                        <%--<th style="width: 12%">First Name<i class="fa fa-sort"></i><asp:TextBox ID="fltxtFname" runat="server" Width="100px"></asp:TextBox></th>--%>
                        <th style="width: 17%">Name<i class="fa fa-sort"></i><br />
                            <asp:TextBox ID="fltxtLname" runat="server" Width="190px"></asp:TextBox></th>
                        <th style="width: 19%">Email<i class="fa fa-sort"></i><br />
                            <asp:TextBox ID="fltxtEmail" runat="server" Width="200px"></asp:TextBox></th>
                        <th style="width: 19%">Address<i class="fa fa-sort"></i><br />
                            <asp:TextBox ID="fltxtAddress" runat="server" Width="200px"></asp:TextBox></th>
                        <th style="width: 20%">Discipline<i class="fa fa-sort"></i><br />
                            <asp:DropDownList ID="flddlDiscipline" runat="server" Style="height: 26px" Width="180px">
                                <asp:ListItem Text="--Select--" Value="0" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Engineering" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Mechanical Engineering" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Pipe Lines" Value="3"></asp:ListItem>
                            </asp:DropDownList></th>
                        <th style="width: 18%">DAM<i class="fa fa-sort"></i><br />
                            <asp:DropDownList ID="flddlDAM" runat="server" Style="height: 26px" Width="150px">
                                <asp:ListItem Text="--Select--" Value="0" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Capital Projects" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Downstream" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Upstream" Value="3"></asp:ListItem>
                            </asp:DropDownList>
                        </th>
                        <th style="width: 7%">Actions
                            <br />
                            <div style="vertical-align: middle">
                                <asp:ImageButton ID="imgBtnFilter" CssClass="table_img" runat="server" ImageUrl="~/Images/Filter2.png" ToolTip="Filter" />
                                <%--<asp:ImageButton ID="imgBtnFilterSave" CssClass="table_img" runat="server" ImageUrl="~/Images/Save.png" ToolTip="Save Filter" />--%>
                               <%-- <input type="image" src="../Images/save.png" id="imgBtnFilterSave" class="table_img"  />--%>
                               <%-- <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#MyPopup">Open Modal</button>--%>
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <td>Rama krishna</td>
                        <td>ramakrishna.bachu@shell.com</td>
                        <td>Bagamane solarium city Bengalure</td>
                        <td>Pipe lines</td>
                        <td>Upstream</td>
                        <td></td>
                    </tr>
                    <tr id="row2" runat="server">
                        <td>Atul Jha</td>
                        <td>atul.jha@shell.com</td>
                        <td>Eco world Bengaluru</td>
                        <td>Engineering</td>
                        <td>Downstream</td>
                        <td></td>
                    </tr>
                    <tr id="row3" runat="server">
                        <td>Naidu kannuru</td>
                        <td>naidu.kannuru@shell.com</td>
                        <td>STCB Bengaluru</td>
                        <td>Engineering</td>
                        <td>Capital projects</td>
                        <td></td>
                    </tr>
                    <tr id="row4" runat="server">
                        <td>Naveen P</td>
                        <td>naveen.p@shell.com</td>
                        <td>Eco world Bengaluru</td>
                        <td>Mechanical Engineering</td>
                        <td>Capital projects</td>
                        <td></td>
                    </tr>
                </table>
            </div>
            <div id="MyPopup" class="modal fade" role="dialog" >
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">
                                &times;</button>
                            <h4 class="modal-title">Modal Header</h4>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the modal.</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">
                                Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
