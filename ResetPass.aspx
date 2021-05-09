<%@ Page Title="Reset password" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ResetPass.aspx.cs" Inherits="OnlineCoursePlatform.ForgotPass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #form1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">  
    <div>
        <asp:Label runat="server" ID="lblUsername" Text="username" Width="96px"   
            Font-Bold="True" ForeColor="#996633" Height="26px"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUsername" runat="server" OnTextChanged="txtUsername_TextChanged" ></asp:TextBox>  

        

        <br />
        <br />

        

        <asp:Label ID="Label1" runat="server" Text="Current password" Width="183px"   
            Font-Bold="True" ForeColor="#996633" Height="26px"></asp:Label>  
        <asp:TextBox ID="txt_cpassword" runat="server" TextMode="Password"></asp:TextBox>  
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   
            ControlToValidate="txt_cpassword"   
            ErrorMessage="Please enter Current password"></asp:RequiredFieldValidator>  
        <br />
        <br />  
         <asp:Label ID="Label2" runat="server" Text="New password" Width="120px"   
            Font-Bold="True" ForeColor="#996633"></asp:Label>  
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
        <asp:TextBox ID="txt_npassword" runat="server" TextMode="Password"></asp:TextBox>  
        &nbsp;  
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"   
            ControlToValidate="txt_npassword" ErrorMessage="Please enter New password"></asp:RequiredFieldValidator>  
        <br />
        <br />  
          
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
          
         <asp:Label ID="Label3" runat="server" Text="Confirm password" Width="157px"   
            Font-Bold="True" ForeColor="#996633" style="margin-left: 0px"></asp:Label>  
  
        &nbsp;&nbsp;&nbsp;  
  
        <asp:TextBox ID="txt_ccpassword" runat="server" TextMode="Password"></asp:TextBox>     
  
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"   
            ControlToValidate="txt_ccpassword"   
            ErrorMessage="Please enter Confirm  password"></asp:RequiredFieldValidator>  
  
        <asp:CompareValidator ID="CompareValidator1" runat="server"   
            ControlToCompare="txt_npassword" ControlToValidate="txt_ccpassword"   
            ErrorMessage="Password Mismatch"></asp:CompareValidator>      
            
        <br />
        <br />
            
    <asp:Button ID="btn_update" runat="server" Font-Bold="True" BackColor="#CCFF99" onclick="btn_update_Click" Text="Update" />  
        <br />
    <asp:Label ID="lbl_msg" Font-Bold="True" BackColor="#FFFF66" ForeColor="#FF3300" runat="server" Text=""></asp:Label><br />
    </div>  
    
    </form>
</asp:Content>
