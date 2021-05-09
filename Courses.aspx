<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="OnlineCoursePlatform.WebForm1" %>

<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Learn Poetry, Support for Students, Professional Norms, Best Practice">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Courses</title>
    <link rel="stylesheet" href="StyleSheet1.css" media="screen">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
</head>
<body class="u-body">
    <header class="u-clearfix u-header u-header" id="sec-85c8">
        <div class="u-clearfix u-sheet u-sheet-1">
            <img src="images/Future_Devs-removebg-preview.png" alt="" class="u-image u-image-default u-image-1" data-image-width="397" data-image-height="145">
            <span class="u-border-2 u-border-palette-1-base u-icon u-icon-circle u-spacing-8 u-text-palette-1-base u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 55 55" style=""><use xlink:href="#svg-f087"></use></svg><svg class="u-svg-content" viewBox="0 0 55 55" x="0px" y="0px" id="svg-f087" style="enable-background: new 0 0 55 55;"><path d="M55,27.5C55,12.337,42.663,0,27.5,0S0,12.337,0,27.5c0,8.009,3.444,15.228,8.926,20.258l-0.026,0.023l0.892,0.752
	c0.058,0.049,0.121,0.089,0.179,0.137c0.474,0.393,0.965,0.766,1.465,1.127c0.162,0.117,0.324,0.234,0.489,0.348
	c0.534,0.368,1.082,0.717,1.642,1.048c0.122,0.072,0.245,0.142,0.368,0.212c0.613,0.349,1.239,0.678,1.88,0.98
	c0.047,0.022,0.095,0.042,0.142,0.064c2.089,0.971,4.319,1.684,6.651,2.105c0.061,0.011,0.122,0.022,0.184,0.033
	c0.724,0.125,1.456,0.225,2.197,0.292c0.09,0.008,0.18,0.013,0.271,0.021C25.998,54.961,26.744,55,27.5,55
	c0.749,0,1.488-0.039,2.222-0.098c0.093-0.008,0.186-0.013,0.279-0.021c0.735-0.067,1.461-0.164,2.178-0.287
	c0.062-0.011,0.125-0.022,0.187-0.034c2.297-0.412,4.495-1.109,6.557-2.055c0.076-0.035,0.153-0.068,0.229-0.104
	c0.617-0.29,1.22-0.603,1.811-0.936c0.147-0.083,0.293-0.167,0.439-0.253c0.538-0.317,1.067-0.648,1.581-1
	c0.185-0.126,0.366-0.259,0.549-0.391c0.439-0.316,0.87-0.642,1.289-0.983c0.093-0.075,0.193-0.14,0.284-0.217l0.915-0.764
	l-0.027-0.023C51.523,42.802,55,35.55,55,27.5z M2,27.5C2,13.439,13.439,2,27.5,2S53,13.439,53,27.5
	c0,7.577-3.325,14.389-8.589,19.063c-0.294-0.203-0.59-0.385-0.893-0.537l-8.467-4.233c-0.76-0.38-1.232-1.144-1.232-1.993v-2.957
	c0.196-0.242,0.403-0.516,0.617-0.817c1.096-1.548,1.975-3.27,2.616-5.123c1.267-0.602,2.085-1.864,2.085-3.289v-3.545
	c0-0.867-0.318-1.708-0.887-2.369v-4.667c0.052-0.52,0.236-3.448-1.883-5.864C34.524,9.065,31.541,8,27.5,8
	s-7.024,1.065-8.867,3.168c-2.119,2.416-1.935,5.346-1.883,5.864v4.667c-0.568,0.661-0.887,1.502-0.887,2.369v3.545
	c0,1.101,0.494,2.128,1.34,2.821c0.81,3.173,2.477,5.575,3.093,6.389v2.894c0,0.816-0.445,1.566-1.162,1.958l-7.907,4.313
	c-0.252,0.137-0.502,0.297-0.752,0.476C5.276,41.792,2,35.022,2,27.5z"></path></svg></span>

            <asp:Label runat="server" ID="hello" class="u-text u-text-default u-text-1"></asp:Label>
            <form runat="server" style="display: inline;">
                <asp:Button runat="server" class="u-text-1" Text="Reset Password" ID="forgPass" OnClick="forgPass_Click"></asp:Button>
            </form>
        </div>
    </header>
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
</body>
</html>

