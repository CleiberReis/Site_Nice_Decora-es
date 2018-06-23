<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="../img/img.ico" rel="icon">
        <title>Nice Decorações</title>

        <!-- Bootstrap / Validate / JQuery core CSS -->
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="../js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="../js/localization/messages_pt_BR.js" type="text/javascript"></script>
        <script src="../js/notify.min.js" type="text/javascript"></script>
        <script src="../js/validacao.js" type="text/javascript"></script>
        <script src="../js/bootstrap.bundle.min.js" type="text/javascript"></script>
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>


        <!--Código Script do Formulario-->
        <script type="text/javascript">
            $(document).ready(function valformulario() {

                $("#formulario").validate({
                    rules: {
                        login: {
                            required: true,
                            maxlength: 80
                        },
                        senha: {
                            required: true,
                            minlength: 4
                        }
                    }
                })
            })

        </script>
    </head>
    <body>

        <!-- Barra de Navegação -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" style="background-color: #2F9C95;">
            <div class="container">
                <a class="navbar-brand" href="../index.jsp">
                    <img src="../img/Inicial/logo.png" class="img-fluid" style="width: 120px; height: 100px;" alt=""/>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="../index.jsp">Principal
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="login.jsp">Painel de Controle</a>
                        </li>                       
                    </ul>
                </div>
            </div> 
        </nav>
        <!-- login admm -->
        <br/>
        <br/>
        <%
            String erro = request.getParameter("erro");
            if (erro != null){
            if (erro.equals("ADMINISTRADOR_NAO_CADASTRADO")) {
        %>
        <div class="col-lg12 col-md12 col-sm12 text-center">
            <h4>Administrador não existe!</h4>
        </div>
        <%
            }}
        %>
        <div class="cabecalho">
            <h3 class="titulo">Login de Adm</h3>
            <!-- <p class="descricao"></p>-->
        </div>
        <br/>
        <hr>
        <br/>
        <div class="container wow fadeInUp">
            <div class="row justify-content-center">
                <div class="col-lg-8 col-md-8 col-sm-6">
                    <div class="form">
                        <div class="container wow fadeInUp">
                            <div class="row justify-content-center">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <form class="form-check" name="formulario" id="formulario" method="post" action="logar.jsp" onsubmit="return valFormulario()">
                                        <div class="row justify-content-center">
                                            <div class="col-lg-8 col-md-8 col-sm-8 text-center">
                                                <img class="img-fluid rounded profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
                                            </div>
                                        </div>
                                        <br/>

                                        <div class="form-group">
                                            <input type="text" name="login" class="form-control" id="login" placeholder="Login"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" name="senha" id="senha" placeholder="Digite sua senha"/>
                                        </div>
                                        <div class="text-center">
                                            <button class="btn btn-dark text-center" type="submit" >Efetuar Login</button>
                                        </div>
                                        <br/>
                                    </form>
                                </div>
                            </div> 
                            <div class="col-md-2 col-sm-12"></div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- Rodapé -->
        <footer class="py-5" style="background-color: #2F9C95;">
            <div class="container">
                <p class="m-0 text-center text-white">Nice Decorações &copy; 2018 - Todos os direitos reservados</p>
            </div>
        </footer>
    </body>
</html>
