<%@page import="dominio.Administrador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Administrador administradorLogado = null;
if (session.getAttribute("administrador")!= null){
    administradorLogado = (Administrador) session.getAttribute("administrador");
}else{
    response.sendRedirect("login.jsp");
}
%>
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
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-6 text-center">
                    <div>
                        <h3>Gestão de Produtos</h3>
                    </div>
                    <a href="cadastrarProduto.jsp" class="btn btn-outline-success" role="button">Adicionar novo produto</a>
                    <a href="listarProduto.jsp" class="btn btn-outline-primary" role="button">Listar produtos</a>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-6 text-center">
                    <div>
                        <h3>Gestão de Clientes</h3>
                    </div>
                    <a href="listarContato.jsp" class="btn btn-outline-primary" role="button">Listar contatos</a>
                </div>
            </div>
        </div>
        <hr>
       
    </body>
</html>
