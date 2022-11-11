<%@ Page Title="" Language="C#" MasterPageFile="~/masterLogin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Reebok.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
    <div id="tb_nome">
       
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager> <!-- REFRESH da página -------------->

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
       
       <center><h1>Login</h1>
            
       <p>Email:
           <asp:TextBox ID="tb_email" runat="server" Width="179px"></asp:TextBox>
       </p>
       <p>Senha:
           <asp:TextBox ID="tb_senha" runat="server" TextMode="Password" Width="179px"></asp:TextBox>
       </p>
       <p>&nbsp;</p>
        </center>
      

        <center>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Button ID="btn_enviar" runat="server" OnClick="btn_enviar_Click" Text="Login" ForeColor="#003399" Width="179px" />
       <br />
       <br />
       <br />
       <asp:Label ID="lbl_erroLogin" runat="server" ForeColor="Red" Text="Email ou Senha Incorretos" Visible="False"></asp:Label>
       <br /></center>
        
        
   </div>  

                </ContentTemplate>
            </asp:UpdatePanel>
    
</asp:Content>
                  
