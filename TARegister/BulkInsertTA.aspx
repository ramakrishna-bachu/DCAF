<%@ Page Language="C#" Title="Add TA" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BulkInsertTA.aspx.cs" Inherits="DCAF.TARegister.BulkInsertTA" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<asp:UpdatePanel ID="updatepnl" runat="server">  
<ContentTemplate>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {

            // Denotes total number of rows
            var rowIdx = 0;

            // jQuery button click event to add a row
            $('#addBtn').on('click', function (e) {

                // Adding a row inside the tbody.
                $('#tbody').append(`<tr id="R${++rowIdx}" style="border-spacing: 10px">
                    <td>
                        <asp:TextBox runat="server" Width="250px" Height="26px"></asp:TextBox></td>
                    <td>
                        <asp:TextBox runat="server" Width="250px" Height="26px"></asp:TextBox></td>
                    <td>
                        <asp:DropDownList runat="server" Width="150px" Height="26px">
                            <asp:ListItem Text="--Select--" Value="0" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Appointing TA" Value="1"></asp:ListItem>
                            <asp:ListItem Text="TA 0" Value="2"></asp:ListItem>
                            <asp:ListItem Text="TA 1" Value="3"></asp:ListItem>
                            <asp:ListItem Text="TA 2" Value="4"></asp:ListItem>
                            <asp:ListItem Text="TA 3" Value="5"></asp:ListItem>
                        </asp:DropDownList></td>
                    <td>
                        <asp:DropDownList ID="flddlDiscipline" runat="server" Style="height: 26px" Width="200px">
                            <asp:ListItem Text="--Select--" Value="0" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Engineering" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Mechanical Engineering" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Pipe Lines" Value="3"></asp:ListItem>
                        </asp:DropDownList></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Style="height: 26px" Width="150px">
                            <asp:ListItem Text="--Select--" Value="0" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Acquired" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Coming Due" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Expired" Value="3"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:ImageButton CssClass="table_img remove" runat="server" ImageUrl="~/Images/Delete.png" ToolTip="Delete row" />
                    </td>
                </tr>`);
                // alert();
                //e.preventDefault();
            });

            $('#tbody').on('click', '.remove', function () {

                // Getting all the rows next to the row
                // containing the clicked button
                var child = $(this).closest('tr').nextAll();

                // Iterating across all the rows 
                // obtained to change the index
                child.each(function () {

                    // Getting <tr> id.
                    var id = $(this).attr('id');

                    // Getting the <p> inside the .row-index class.
                    var idx = $(this).children('.row-index').children('p');

                    // Gets the row number from <tr> id.
                    var dig = parseInt(id.substring(1));

                    // Modifying row index.
                    idx.html(`Row ${dig - 1}`);

                    // Modifying row id.
                    $(this).attr('id', `R${dig - 1}`);
                });

                // Removing the current row.
                $(this).closest('tr').remove();

                // Decreasing total number of rows by 1.
                rowIdx--;
            });
        });
    </script>

    <div style="height: 440px; width: 100%; padding: 10px 20px 10px 20px" runat="server">
        <br />
        <div style="align-self: center; padding-left: 15px; padding-right: 15px;">

            <div id="TADetails" style="align-self: center; padding-left: 15px; padding-right: 15px;">

                <table style="width: 90%; border: 1px medium; text-align: left; margin: 0 auto;" class="table th td">
                    <thead style="width: 90%">
                        <tr>
                            <th style="border-bottom: 0px; width: 20%">Name</th>
                            <th style="border-bottom: 0px; width: 20%">Email</th>
                            <th style="border-bottom: 0px; width: 20%">TA Level</th>
                            <th style="border-bottom: 0px; width: 20%">Discipline</th>
                            <th style="border-bottom: 0px; width: 20%">Certificate Status</th>
                            <th style="border-bottom: 0px; width: 20%">Action</th>
                        </tr>
                    </thead>
                    <tbody id="tbody">
                        <tr id="R${++rowIdx}" style="border-spacing: 10px">
                            <td>
                                <asp:TextBox runat="server" Width="250px" Height="26px"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" Width="250px" Height="26px"></asp:TextBox></td>
                            <td>
                                <asp:DropDownList runat="server" Width="150px" Height="26px">
                                    <asp:ListItem Text="--Select--" Value="0" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="Appointing TA" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="TA 0" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="TA 1" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="TA 2" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="TA 3" Value="5"></asp:ListItem>
                                </asp:DropDownList></td>
                            <td>
                                <asp:DropDownList runat="server" Style="height: 26px" Width="200px">
                                    <asp:ListItem Text="--Select--" Value="0" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="Engineering" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Mechanical Engineering" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="Pipe Lines" Value="3"></asp:ListItem>
                                </asp:DropDownList></td>
                            <td>
                                <asp:DropDownList runat="server" Style="height: 26px" Width="150px">
                                    <asp:ListItem Text="--Select--" Value="0" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="Acquired" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Coming Due" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="Expired" Value="3"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:ImageButton CssClass="table_img remove" runat="server" ImageUrl="~/Images/Delete.png" ToolTip="Delete row" />
                            </td>
                        </tr>
                    </tbody>
                </table>

            </div>
            <br />
            <div style="position: absolute; left: 70px;">
                <button type="button" id="addBtn" class="new_row_button_style" value="Add new row" style="margin-right: 15px">Add new row</button>
                <button type="button" id="btnSave" class="new_row_button_style" value="Save">Save</button>
            </div>
        </div>
    </div>

    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
