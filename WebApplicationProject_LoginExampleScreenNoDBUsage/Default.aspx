<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplicationProject_LoginExampleScreenNoDBUsage._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section aria-labelledby="aspnetTitle" class="d-flex justify-content-center align-content-center flex-column vh-100 text-center">
            <h3 id="aspnetTitle" class="display-3 fs-3 d-block p-2">To Continue to site you need to login</h3>
            <asp:Image 
            ID="Image1" 
            runat="server" 
            ImageUrl="~/Images/user.png" 
            CssClass="mx-auto d-block text-center my-2" Width="220px" Height="220px" 
            />
            <p class="lead">Enter Login Info</p>
            <div class="form">               
                <div id="FieldUserEmail" class="d-flex flex-column justify-content-center align-content-center align-items-center mx-auto text-center w-100">
                    <asp:Label Text="Enter Your E-mail" runat="server" />
                    <asp:TextBox runat="server" AutoCompleteType="None" EnableViewState="false" ID="inputFieldUserEmail"/>
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Require field" ControlToValidate="inputFieldUserEmail" Display="Dynamic"/>
                    <asp:RegularExpressionValidator ErrorMessage="Not valid e-mail" ControlToValidate="inputFieldUserEmail" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"/>
                </div>
                <div class="d-flex flex-column justify-content-center align-content-center align-items-center mx-auto text-center w-100" id="FieldUserPassword">
                    <asp:Label Text="Enter Your Password" runat="server" />
                    <asp:TextBox runat="server" AutoCompleteType="None" EnableViewState="false" ID="inputFieldUserPassword"/>
                    <asp:RequiredFieldValidator ErrorMessage="Requered field" ControlToValidate="inputFieldUserPassword" runat="server" Display="Dynamic"/>
                    <asp:RegularExpressionValidator ErrorMessage="Not valid password" ControlToValidate="inputFieldUserPassword" runat="server" Display="Dynamic" ValidationExpression="\w{8,16}"/>
                </div>
                <asp:Button Text="Login" runat="server" CssClass="btn btn-outline-info d-block w-25 p-2 my-4 mx-auto"/>
            </div>
        </section>

        
    </main>

</asp:Content>
