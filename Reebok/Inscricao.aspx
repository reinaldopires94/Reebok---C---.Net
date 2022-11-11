<%@ Page Title="" Language="C#" MasterPageFile="~/masterIncricao.Master" AutoEventWireup="true" CodeBehind="Inscricao.aspx.cs" Inherits="Reebok.Inscricao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <p>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:Xml ID="Xml1" runat="server" DocumentSource="~/menu.xml" TransformSource="~/inscricao.xslt"></asp:Xml>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            &nbsp;&nbsp;
        <h3><asp:Label ID="lbl_dataHora" runat="server"></asp:Label></h3>
    <p>&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nome:<asp:TextBox ID="tb_nome" runat="server" Height="27px" Width="168px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_nome" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:<asp:TextBox ID="tb_email" runat="server" Height="27px" Width="168px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_email" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Senha:<asp:TextBox ID="tb_senha" runat="server" Height="27px" Width="168px" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_senha" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Morada:<asp:TextBox ID="tb_morada" runat="server" Height="40px" TextMode="MultiLine" Width="171px" OnTextChanged="tb_morada_TextChanged"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb_morada" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Código-Postal:<asp:TextBox ID="tb_codigoPostal" runat="server" Height="27px" Width="101px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_codigoPostal" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbl_resultado" runat="server" ForeColor="Red" Text=" "></asp:Label>
            </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Género:<asp:RadioButton ID="rbl_generoFem" runat="server" Text="Feminino" AutoPostBack="True" OnCheckedChanged="rbl_generoFem_CheckedChanged"  />
&nbsp;
   
    <asp:RadioButton ID="rbl_generoMas" runat="server" Text="Masculino" AutoPostBack="True" OnCheckedChanged="rbl_generoMas_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;</p>
         

    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Regime:<asp:DropDownList ID="ddl_regime" runat="server" AutoPostBack="True" Width="146px" Height="27px" OnSelectedIndexChanged="ddl_regime_SelectedIndexChanged">
    <asp:ListItem></asp:ListItem>
    <asp:ListItem>Diurno</asp:ListItem>
    <asp:ListItem>Noturno</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Curso:<asp:DropDownList ID="ddl_curso" runat="server" AutoPostBack="True" Height="27px" Width="173px">
            <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbl_morada" runat="server" ForeColor="Red"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_codigoPostal" ErrorMessage="Código-Postal inválido (0000-000)" ForeColor="#00CC00" ValidationExpression="^\d{4}(-\d{3})?$"></asp:RegularExpressionValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tb_email" ErrorMessage="Email Inválido (email@email.com)" ForeColor="#00CC00" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        &nbsp;&nbsp; </p> 
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hobbies:&nbsp; <asp:CheckBox ID="cb_xadrez" runat="server" Text=" Xadrez" OnCheckedChanged="cb_xadrez_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:CheckBox ID="cb_Fustal" runat="server" Text=" Fustal" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:CheckBox ID="cb_formula1" runat="server" Text=" Formula 1" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:CheckBox ID="cb_leitura" runat="server" Text=" Leitura" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:CheckBox ID="cb_pintar" runat="server" Text=" Pintar" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="cb_escrever" runat="server" Text=" Escrever" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
<p>&nbsp;</p>
        </ContentTemplate>
    </asp:UpdatePanel>
    <p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_submeter" runat="server" ForeColor="#0033CC" Text="Submeter" Width="142px" OnClick="btn_submeter_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_limpar" runat="server" ForeColor="#0033CC" Text="Limpar" Width="144px" OnClick="btn_limpar_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
       
    </p>
    <p>
    </p>
    <br />
        
</asp:Content>
