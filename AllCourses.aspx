<%@ Page Title="All Courses" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AllCourses.aspx.cs" Inherits="OnlineCoursePlatform.AllCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="u-clearfix u-image u-valign-middle-md u-valign-middle-sm u-valign-middle-xs u-section-1" id="sec-832e">
        <div class="u-clearfix u-sheet u-sheet-1">
            <asp:Repeater ID="rptCourses" runat="server">
                <ItemTemplate>
                    <table style="display: inline;">
                        <tr>
                            <td>
                                <img alt="" height="140px" width="140px" src='<%# Eval("image") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("CourseName") %>'></asp:Label><br />
                                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("CoursePrice") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br></br>
                    <br></br>
                </ItemTemplate>

            </asp:Repeater>
        </div>
    </section>
</asp:Content>
