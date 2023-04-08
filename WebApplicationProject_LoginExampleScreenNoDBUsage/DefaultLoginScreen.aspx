<%@ Page Title="Default Login " Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DefaultLoginScreen.aspx.cs" Inherits="WebApplicationProject_LoginExampleScreenNoDBUsage.DefaultLoginScreen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentLoginPage" runat="server">
    <div class="d-flex flex-column p-3 m-0 vh-100 align-content-center align-items-center justify-content-center">

        <asp:Image 
            ID="Image1" 
            runat="server" 
            ImageUrl="~/Images/user.png" 
            CssClass=" mx-auto d-block text-center " Width="250px" Height="250px" 
            />
        
        <div class="d-block w-100 mx-auto my-4 justify-content-center text-center">
            <asp:Button
                Text="Login" 
                runat="server"
                CssClass="btn btn-outline-info w-25"
                ID="btnGoToLoginPage"
                OnClick="btnGoToLoginPage_Click"/>
            <asp:Button 
                Text="Register" 
                runat="server" 
                CssClass="w-25 btn btn-light border border-1 " 
                ID="btnRegister" 
                OnClick="btnRegister_Click"/>
        </div>
        
    </div>
 
</asp:Content>

