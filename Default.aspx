<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Manager_Default" %>

<asp:Content ContentPlaceHolderID="head" runat="Server"></asp:Content>
<asp:Content ContentPlaceHolderID="content" runat="Server">
    <%--<header>
        <img src="Imagens/logo_nardys.png" class="logo" width="170" height="170" alt="Logo Nardy's" title="Logo Nardy's">
        <label for="menu-togle" class="navbar-btn" title="Desabilitar/Habilitar Menu">
            
                <span class="sr-only">Toggle navigation</span> 
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            
        </label>
        
    </header>
    <input id="menu-togle" type="checkbox" />--%>
    <main class="login">
        <section>
            <div class="wrapper wrapper-full-page">
                <div class="full-page login-page">
                    <div class="content">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-4 col-sm-6 col-md-offset-4 col-sm-offset-3">
                                    <div class="card card-login card-hidden">

                                        <div class="card-header text-center" data-background-color="green">
                                            <h2><%=Resources.Textos.Login_Titulo %></h2>
                                        </div>

                                        <%--<div class="input-group label-floating">
                                            <span class="input-group-addon">
                                                <i class="material-icons">email</i>
                                            </span>
                                            <div class="form-group label-floating">
                                                <label class="control-label">Login</label>
                                                <input type="email" maxlength="255" class="form-control" name="Email">
                                            </div>
                                        </div>--%>

                                        <asp:PlaceHolder runat="server" ID="phlMensagem" Visible="false">
                                            <p style="width: 15em;">
                                                <asp:Label ID="lblMensagem" runat="server" ToolTip="Mensagem" Font-Bold="true"></asp:Label>
                                            </p>
                                        </asp:PlaceHolder>

                                        <asp:Panel ID="pnlLogin" runat="server">
                                            <div class="input-group label-floating">
                                                <div class="form-group label-floating">
                                                    <label>
                                                        <asp:Label ID="lblLogin" class="control-label" runat="server" ToolTip="Login"><%=Resources.Textos.Login_Campo_Login %></asp:Label>
                                                        <asp:TextBox runat="server" class="form-control" ID="txtLogin" MaxLength="50" ToolTip="Informe o login"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvLogin" runat="server" ControlToValidate="txtLogin" Text="*" ForeColor="Red" ToolTip="Preenchimento obrigatório"></asp:RequiredFieldValidator>
                                                    </label>

                                                    <label>
                                                        <asp:Label ID="lblSenha" class="control-label" runat="server" ToolTip="Senha"><%=Resources.Textos.Login_Campo_Senha %></asp:Label>
                                                        <asp:TextBox TextMode="Password" class="form-control" runat="server" ID="txtSenha" MaxLength="50" ToolTip="Informe a senha"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvSenha" runat="server" ControlToValidate="txtSenha" Text="*" ForeColor="Red" ToolTip="Preenchimento obrigatório"></asp:RequiredFieldValidator>
                                                    </label>

                                                    <div class="no-label">
                                                        <asp:Button runat="server" ID="btSubmit" Text="OK" OnClick="btSubmit_Click" ToolTip="OK" />
                                                        <asp:Button runat="server" ID="btnEsqueciSenha" Text="Esqueci minha senha" OnClick="btSubmitEsqueciSenha_Click" CausesValidation="false" ToolTip="Esqueci minha senha" />
                                                    </div>
                                                </div>
                                            </div>
                                        </asp:Panel>

                                        <asp:Panel ID="pnlEsqueciSenha" runat="server" Visible="false">
                                            <label>
                                                <asp:Label ID="lblEmailEsqueci" runat="server" ToolTip="Email"><%=Resources.Textos.Login_Campo_Esqueci_Senha_Email %></asp:Label>
                                                <asp:TextBox runat="server" ID="txtEmailEsqueci" MaxLength="50" ToolTip="Informe Email"></asp:TextBox>
                                            </label>
                                            <div class="no-label">
                                                <asp:Button runat="server" ID="btnEnviarEsqueci" Text="Enviar" OnClick="btnEnviarEsqueci_Click" ToolTip="Enviar" />
                                                <asp:Button runat="server" ID="btnVoltar" Text="Voltar" OnClick="btnVoltar_Click" ToolTip="Voltar" />
                                            </div>
                                        </asp:Panel>

                                        <asp:Panel ID="pnlPrimeiroAcesso" runat="server" Visible="false">

                                            <p>
                                                <%=Resources.Textos.Login_Mensagem_Trocar_Senha %>
                                            </p>

                                            <label style="text-align: center; display: block;">
                                                <asp:Label ID="lblNovaSenha" runat="server" ToolTip="Nova senha" Style="text-align: center;"><%=Resources.Textos.Login_Campo_Nova_Senha %></asp:Label>
                                                <asp:TextBox TextMode="Password" runat="server" ID="txtSenhaNova" MaxLength="50" ToolTip="Informe nova senha"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvSenhaNova" runat="server" ControlToValidate="txtSenhaNova" Text="*" ForeColor="Red" Display="Dynamic" ToolTip="Preenchimento obrigatório"></asp:RequiredFieldValidator>
                                            </label>

                                            <label style="text-align: center; display: block;">
                                                <asp:Label ID="lblNovaSenhaConfirma" runat="server" ToolTip="Nova senha" Style="text-align: center;"><%=Resources.Textos.Login_Campo_Nova_Senha_Confirma %></asp:Label>
                                                <asp:TextBox TextMode="Password" runat="server" ID="txtSenhaNovaConfirma" MaxLength="50" ToolTip="Confirme nova senha"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvSenhaNovaConfirma" runat="server" ControlToValidate="txtSenhaNovaConfirma" Text="*" ForeColor="Red" Display="Dynamic" ToolTip="Preenchimento obrigatório"></asp:RequiredFieldValidator>
                                            </label>

                                            <div class="no-label" style="margin-left: 0 !important; width: auto !important; text-align: center !important;">
                                                <asp:Button runat="server" ID="btnSalvarNovaSenha" Text="Salvar" OnClick="btnSalvarNovaSenha_Click" ToolTip="Salvar" />
                                            </div>
                                        </asp:Panel>

                                        <div class="border bottom">
                                            <div class="version">
                                                <span><%=Resources.Textos.Versao_Aplicaco %></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="full-page-background" style="background-image: url(../Assets/img/login-bg.jpg)"></div>
                </div>
            </div>
        </section>
    </main>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.card-login').removeClass('card-hidden');
        })
    </script>


</asp:Content>









