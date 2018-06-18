<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="img/img.ico" rel="icon">
        <title>Nice Decorações</title>

        <!-- Bootstrap / Validate / JQuery core CSS -->
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="../js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="../js/localization/messages_pt_BR.js" type="text/javascript"></script>
        <script src="../js/notify.min.js" type="text/javascript"></script>
        <link href="animate/animate.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/validacao.js" type="text/javascript"></script>
        <script src="../js/bootstrap.bundle.min.js" type="text/javascript"></script>
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>

        <!-- Barra de Navegação -->
        <nav class="navbar navbar-expand-lg navbar-dark badge-info fixed-top">
            <div class="container">
                <a class="navbar-brand" href="../index.jsp">
                    <strong>Nice Decorações</strong>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="../index.jsp">Principal</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="../administrador/login.jsp"><img src="../img/Inicial/boss.png" class="img-fluid" alt="" style="width: 25px; height: 25px"/></a>             
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <br />
        <!-- Painel -->
        <div class="cabecalho">
            <h3 class="titulo">Painel de Controle</h3>
        </div>
        <hr>
        <div class="container wow fadeInUp">
            <div class="row justify-content-center">
                <div class="col-lg-8 col-md-8 col-sm-6">
                    <div>
                        <h3>Gestão de Produtos</h3>
                    </div>
                    <a href="cadastrarProduto.jsp" class="btn btn-outline-success" role="button">Adicionar novo produto</a>
                    <br />
                    <a href="editarProduto.jsp" class="btn btn-outline-warning" role="button">Editar um produto</a>
                    <br />
                    <a href="listarProduto.jsp" class="btn btn-outline-primary" role="button">Listar os produtos</a>
                    <br />
                    <a href="excluirProduto.jsp" class="btn btn-outline-danger" role="button">Excluir um produto</a>
                </div>
            </div>
        </div>
        <br />

        <div class="container wow fadeInUp">
            <div class="row justify-content-center">
                <div class="col-lg-8 col-md-8 col-sm-6">
                    <div>
                        <h3>Gestão de Clientes</h3>
                    </div>
                    <a href="listarContato.jsp" class="btn btn-outline-success" role="button">Listar contatos</a>
                    <br />
                    <a href="excluirContato.jsp" class="btn btn-outline-warning" role="button">Excluir contato</a>
                    <br />
                </div>
            </div>
        </div>
        <hr>
        <!-- Rodapé -->
        <footer class="py-5 badge-info">
            <div class="container">
                <p class="m-0 text-center text-white">Nice Decorações &copy; 2018 - Todos os direitos reservados</p>
            </div>
        </footer>
    </body>
</html>
