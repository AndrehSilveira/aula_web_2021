<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prova_P2.aspx.cs" Inherits="ProgramacaoWeb._02_ASP.NET.Prova_P2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title><h1>Trabalhe Conosco</h1></title>

    <meta charset="UTF-8">        

        <link rel="stylesheet" type="text/css" href= "../Content/CSS/Prova_P2.css"/>

</head>
<body>
     <h1>Trabalhe Conosco</h1>
     <form id="form1" runat="server">
        <div> 
             <fieldset style="height: 197px">
                <legend>Dados Pessoais </legend>            

                 <asp:Label ID="lbNome" runat="server" Text="Nome :     "></asp:Label>
                 <asp:TextBox ID="txtNome" runat="server" Width="549px"></asp:TextBox>
                 <br />
                 <br />
                 <asp:Label ID="lbEnder" runat="server" Text="Endereço:    "></asp:Label>
                 <asp:TextBox ID="txtEndereco" runat="server" Width="533px"></asp:TextBox>
                 <br />
                 <br />
                 <asp:Label ID="lbCidade" runat="server" Text="Cidade :   "></asp:Label>
                 <asp:TextBox ID="txtCidade" runat="server" Width="277px"></asp:TextBox>
                 <br />
                 <br />
                 <asp:Label ID="lbEstado" runat="server" Text="Estado :    "></asp:Label>
                 <asp:DropDownList ID="ddlEstados" runat="server" OnSelectedIndexChanged="ddlEstados_SelectedIndexChanged" >
                     <asp:ListItem Value="55">Rio Grande do Sul</asp:ListItem>
                     <asp:ListItem Value="43">Santa Catarina</asp:ListItem>
                     <asp:ListItem Value="45">Paraná</asp:ListItem>
                     <asp:ListItem Value="11">São Paulo</asp:ListItem>
                     <asp:ListItem Value="21">Rio de janeiro</asp:ListItem>
                     <asp:ListItem Value="22">Espírito Santo</asp:ListItem>
                     <asp:ListItem Value="81">Bahia</asp:ListItem>
                     <asp:ListItem Value="31">Minas Gerais</asp:ListItem>
                     <asp:ListItem Value="62">Mato Grosso do Sul</asp:ListItem>
                     <asp:ListItem Value="63">Mato Grosso</asp:ListItem>
                     <asp:ListItem Value="65">Goias</asp:ListItem>
                     <asp:ListItem Value="66">Distrito Federal</asp:ListItem>
                 </asp:DropDownList>

             </fieldset>  
        </div>
         <br />
         <div> 
             <fieldset style="height: 161px">
                <legend>Dados Profissionais </legend> 
                 <asp:Label ID="lbOcupacao" runat="server" Text="Ocupação Atual :   "></asp:Label>
                 <asp:TextBox ID="txtOcupacao" runat="server" Width="207px"></asp:TextBox>
                 <br />
                 <br />
                 <asp:Label ID="lbCargo" runat="server" Text="Cargo Pretendido :"></asp:Label>
                   &nbsp;&nbsp;&nbsp;
                 <asp:RadioButton ID="rbAnalista" runat="server" GroupName="Cargo" Text="Analista de Sistemas" />
                   &nbsp;&nbsp;&nbsp;
                 <asp:RadioButton ID="rbDBA" runat="server" GroupName="Cargo" Text="DBA" />
                   &nbsp;&nbsp;&nbsp;
                 <asp:RadioButton ID="rbPrAsp" runat="server" GroupName="Cargo" Text="Programador ASP.Net" />
                   &nbsp;&nbsp;&nbsp;
                 <asp:RadioButton ID="rbPrCsharp" runat="server" GroupName="Cargo" Text="Programador C#" />
                  &nbsp;&nbsp;
                 <asp:RadioButton ID="rbPrPhP" runat="server" GroupName="Cargo" Text="Programador PHP" />
                 <br />
                 <br />
                 
                 <asp:Label ID="Label2" runat="server" Text="Mini Currículum :  "></asp:Label>
                 <asp:TextBox ID="txtCurriculum" runat="server" Height="67px" TextMode="MultiLine" Width="691px"></asp:TextBox>
                 <br />
                 <br />             


            </fieldset>

        </div>
         <br />
        
         <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" class="button" />
&nbsp;&nbsp;
         <asp:Button ID="btnExibir" runat="server" Text="Exibir" OnClick="btnExibir_Click" class="button" />
&nbsp;&nbsp;
         <asp:Button ID="btnApagar" runat="server" Text="Apagar" OnClick="btnApagar_Click" class="button" />

         <br />
         <br />
         <h1><asp:Label ID="lbTrabalhe" runat="server" Text =""></asp:Label></h1>
         <br />
         <h2><asp:Label ID="lbDadosSalvos" runat="server"  ></asp:Label></h2>
         <br /> 
         <p><a href="#form1">Clique aqui para voltar</a></p>

    </form>
</body>
</html>
