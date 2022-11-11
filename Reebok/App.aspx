<%@ Page Title="" Language="C#" MasterPageFile="~/masterNews.Master" AutoEventWireup="true" CodeBehind="App.aspx.cs" Inherits="Reebok.App" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    &nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager> 
    <asp:Xml ID="Xml2" runat="server" DocumentSource="~/menu.xml" TransformSource="~/app.xslt"></asp:Xml>
    <!-- REFRESH da página -------------->

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>

        <marquee><h1>Últimas Notícias</h1></marquee>
                    
                    <h3><asp:Label ID="lbl_data" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_inscricao" runat="server" ForeColor="#0066CC" Height="42px" Text="Inscrição" Width="183px" OnClick="btn_inscricao_Click" />
                    </h3>
               
                    
                   
                    <center><asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="46px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="182px">
                        <asp:ListItem Value="Todas">Todas Notícias</asp:ListItem>
                        <asp:ListItem>5 Notícias</asp:ListItem>
                        <asp:ListItem>10 Notícias</asp:ListItem>
                        <asp:ListItem>25 Notícias</asp:ListItem>
                    </asp:DropDownList></center>
               
                    
                    <br />
                  
                    <br />

                    <asp:Xml ID="Xml1" runat="server" TransformSource="~/formata_news.xslt"></asp:Xml>

                     </ContentTemplate>
            </asp:UpdatePanel>
    



</asp:Content>
