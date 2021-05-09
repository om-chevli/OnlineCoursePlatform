<%@ Page Title="Registration" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="OnlineCoursePlatform.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="u-clearfix u-palette-4-base u-section-7" id="carousel_119d">
        <div class="u-clearfix u-sheet u-valign-middle-md u-valign-middle-sm u-valign-middle-xl u-sheet-1">
            <div class="u-align-center u-container-style u-expanded-width-xs u-group u-white u-group-1">
                <div class="u-container-layout u-container-layout-1">
                    <h2 class="u-custom-font u-font-oswald u-text u-text-1">Registration</h2>
                    <div class="u-align-center-sm u-align-center-xs u-align-left-lg u-align-left-md u-align-left-xl u-form u-form-1">
                        <form id="RegistrationForm" method="POST" runat="server" class="u-clearfix u-form-spacing-28 u-form-vertical u-inner-form" style="padding: 10px">

                            <div class="u-form-group u-form-name u-form-group-1">
                                <asp:Label runat="server" ID="lblFName" Text="First Name" class="u-label"></asp:Label>
                                <asp:TextBox runat="server" AutoCompleteType="FirstName" ID="txtFName"
                                    class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvFName" ControlToValidate="txtFName" ErrorMessage="First Name is required!" ForeColor="red" Font-Bold="true" runat="server"></asp:RequiredFieldValidator>
                            </div>

                            <div class="u-form-group u-form-name u-form-group-1">
                                <asp:Label runat="server" ID="lblLName" Text="Last Name" class="u-label"></asp:Label>
                                <asp:TextBox runat="server" AutoCompleteType="LastName" ID="txtLName"
                                    class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvLName" ControlToValidate="txtLName" ErrorMessage="Last Name is required!" ForeColor="red" Font-Bold="true" runat="server"></asp:RequiredFieldValidator>
                            </div>

                            <div class="u-form-group u-form-name u-form-group-1">
                                <asp:Label runat="server" ID="lblGender" Text="Gender" class="u-label"></asp:Label>
                                <asp:RadioButtonList ID="rbGender" runat="server" RepeatDirection="Horizontal" Width="187px">
                                    <asp:ListItem Text="Male" Value="Male" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div>

                            <div class="u-form-group u-form-name u-form-group-1">
                                <asp:Label runat="server" ID="lblEmail" Text="Email" class="u-label"></asp:Label>
                                <asp:TextBox runat="server" ID="txtEmail"
                                    class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEmail" ControlToValidate="txtEmail" ErrorMessage="Email is required!" ForeColor="red" Font-Bold="true" runat="server"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revEmail" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                            </div>

                            <div class="u-form-group u-form-name u-form-group-1">
                                <asp:Label runat="server" ID="lblUsername" Text="Username" class="u-label"></asp:Label>
                                <asp:TextBox runat="server" ID="txtUsername"
                                    class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvUN" ControlToValidate="txtUsername" ErrorMessage="Username is required!" ForeColor="red" Font-Bold="true" runat="server"></asp:RequiredFieldValidator>
                            </div>

                            <div class="u-form-group u-form-name u-form-group-1">
                                <asp:Label runat="server" ID="lblPassword" Text="Password" class="u-label"></asp:Label>
                                <asp:TextBox runat="server" ID="txtPassword" TextMode="Password"
                                    class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPass" ControlToValidate="txtPassword" ErrorMessage="Password is required!" ForeColor="red" Font-Bold="true" runat="server"></asp:RequiredFieldValidator>
                            </div>

                            <div class="u-form-group u-form-name u-form-group-1">
                                <asp:Label runat="server" ID="lblCPassword" Text="Confirm Password" class="u-label"></asp:Label>
                                <asp:TextBox runat="server" ID="txtCPassword" TextMode="Password"
                                    class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvCPass" ControlToValidate="txtCPassword" ErrorMessage="Confirm Password is required!" ForeColor="red" Font-Bold="true" Display="Dynamic" runat="server"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="cvCPass" ControlToCompare="txtPassword" ControlToValidate="txtCPassword" runat="server" ErrorMessage="Password does not match" ForeColor="red" Font-Bold="true" Display="Dynamic"></asp:CompareValidator>
                            </div>

                            <div class="u-form-group u-form-name u-form-group-1">
                                <asp:Label runat="server" ID="lblPhone" Text="Phone Number (Optional)" class="u-label"></asp:Label>
                                <asp:TextBox runat="server" ID="txtPhone" MaxLength="10" AutoCompleteType="BusinessPhone"
                                    class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white"></asp:TextBox>
                            </div>



                            <div class="u-align-center u-form-group u-form-submit u-form-group-4">
                                
                                <asp:Button ID="btnRegister" runat="server" Text="Register Now!" OnClick="btnRegister_Click" class="u-border-2 u-border-black u-btn u-btn-submit u-button-style u-hover-black u-none u-text-black u-text-hover-white u-btn-1"></asp:Button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <img src="images/wqe-min.jpg" alt="" class="u-expanded-width-xs u-image u-image-default u-image-1"
                data-image-width="800" data-image-height="948">
            <div class="u-list u-list-1">
                <div class="u-repeater u-repeater-1">
                    <div class="u-container-style u-list-item u-palette-5-dark-3 u-repeater-item u-list-item-1">
                        <div class="u-container-layout u-similar-container u-valign-top-xl u-container-layout-2">
                            <span
                                class="u-icon u-icon-circle u-text-white u-icon-1">
                                <svg class="u-svg-link"
                                    preserveAspectRatio="xMidYMin slice" viewBox="0 0 513.64 513.64">
                                    <use xlink:href="#svg-b103"></use>
                                </svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
                                    xml:space="preserve" class="u-svg-content" viewBox="0 0 513.64 513.64" x="0px" y="0px" id="svg-b103"
                                    style="enable-background: new 0 0 513.64 513.64;">
                                    <g>
                                        <g>
                                            <path
                                                d="M499.66,376.96l-71.68-71.68c-25.6-25.6-69.12-15.359-79.36,17.92c-7.68,23.041-33.28,35.841-56.32,30.72    c-51.2-12.8-120.32-79.36-133.12-133.12c-7.68-23.041,7.68-48.641,30.72-56.32c33.28-10.24,43.52-53.76,17.92-79.36l-71.68-71.68    c-20.48-17.92-51.2-17.92-69.12,0l-48.64,48.64c-48.64,51.2,5.12,186.88,125.44,307.2c120.32,120.32,256,176.641,307.2,125.44    l48.64-48.64C517.581,425.6,517.581,394.88,499.66,376.96z">
                                            </path>
                                        </g>
                                    </g>
                                </svg></span>
                            <h5 class="u-text u-text-2">Call Us</h5>
                            <p class="u-text u-text-3">1 (234) 567-891, 1 (234) 987-654</p>
                        </div>
                    </div>
                    <div class="u-container-style u-list-item u-palette-5-dark-3 u-repeater-item u-list-item-2">
                        <div class="u-container-layout u-similar-container u-valign-top-xl u-container-layout-3">
                            <span
                                class="u-icon u-icon-circle u-text-white u-icon-2">
                                <svg class="u-svg-link"
                                    preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512">
                                    <use xlink:href="#svg-e42b"></use>
                                </svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
                                    xml:space="preserve" class="u-svg-content" viewBox="0 0 512 512" x="0px" y="0px" id="svg-e42b"
                                    style="enable-background: new 0 0 512 512;">
                                    <g>
                                        <g>
                                            <path
                                                d="M256,0C161.896,0,85.333,76.563,85.333,170.667c0,28.25,7.063,56.26,20.49,81.104L246.667,506.5    c1.875,3.396,5.448,5.5,9.333,5.5s7.458-2.104,9.333-5.5l140.896-254.813c13.375-24.76,20.438-52.771,20.438-81.021    C426.667,76.563,350.104,0,256,0z M256,256c-47.052,0-85.333-38.281-85.333-85.333c0-47.052,38.281-85.333,85.333-85.333    s85.333,38.281,85.333,85.333C341.333,217.719,303.052,256,256,256z">
                                            </path>
                                        </g>
                                    </g>
                                </svg></span>
                            <h5 class="u-text u-text-4">Location</h5>
                            <p class="u-text u-text-5">121 Rock Sreet, 21 Avenue, New York, NY 92103-9000</p>
                        </div>
                    </div>
                    <div class="u-container-style u-list-item u-palette-5-dark-3 u-repeater-item u-list-item-3">
                        <div class="u-container-layout u-similar-container u-valign-top-xl u-container-layout-4">
                            <span
                                class="u-icon u-icon-circle u-text-white u-icon-3">
                                <svg class="u-svg-link"
                                    preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512">
                                    <use xlink:href="#svg-b082"></use>
                                </svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
                                    xml:space="preserve" class="u-svg-content" viewBox="0 0 512 512" id="svg-b082">
                                    <g>
                                        <path
                                            d="m386.058 256c0-8.284 6.716-15 15-15h31.587c-7.224-85.814-75.831-154.421-161.645-161.645v31.588c0 8.284-6.716 15-15 15s-15-6.716-15-15v-31.588c-85.814 7.224-154.421 75.831-161.645 161.645h31.587c8.284 0 15 6.716 15 15s-6.716 15-15 15h-31.587c7.224 85.814 75.831 154.421 161.645 161.645v-31.588c0-8.284 6.716-15 15-15s15 6.716 15 15v31.588c85.814-7.224 154.421-75.831 161.645-161.645h-31.587c-8.284 0-15-6.716-15-15zm-39.467-71.629-79.838 82.087c-5.558 5.714-14.618 6.086-20.625.835l-59.598-52.101c-6.237-5.452-6.873-14.929-1.42-21.165 5.452-6.237 14.928-6.875 21.166-1.421l48.889 42.739 69.921-71.891c5.776-5.938 15.273-6.069 21.211-.295 5.938 5.778 6.07 15.274.294 21.212z">
                                        </path>
                                        <path
                                            d="m256 0c-141.159 0-256 114.841-256 256s114.841 256 256 256 256-114.841 256-256-114.841-256-256-256zm0 463.286c-114.298 0-207.286-92.988-207.286-207.286s92.988-207.286 207.286-207.286 207.286 92.988 207.286 207.286-92.988 207.286-207.286 207.286z">
                                        </path>
                                    </g>
                                </svg></span>
                            <h5 class="u-text u-text-6">Business Hours</h5>
                            <p class="u-text u-text-7">Mon – Fri …… 10 am – 8 pm, Sat, Sun ....… Closed</p>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </section>
</asp:Content>
