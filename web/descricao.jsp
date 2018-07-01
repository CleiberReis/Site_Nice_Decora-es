<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="img/img.ico" rel="icon">
        <title>Nice Decorações</title>

        <!-- Bootstrap / Validate / JQuery / CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="js/localization/messages_pt_BR.js" type="text/javascript"></script>
        <script src="js/notify.min.js" type="text/javascript"></script>
        <link href="animate/animate.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/validacao.js" type="text/javascript"></script>
        <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <header>
            <div style="background-image: url(img/Inicial/imagemPrincipal.jpg); height: 400px; width: 100%;" class="img-fluid">
            </div>
        </header>
 <!-- Barra de Navegação -->
        <nav class="navbar navbar-expand-lg navbar-dark sticky-top">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">
                    <img src="img/Inicial/logo.png" class="img-fluid" style="width: 120px; height: 100px;" alt=""/>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="index.jsp">Principal
                            </a>
                        </li>
                        <li class="nav-item active dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Categorias
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="cama.jsp">Cama</a>
                                <a class="dropdown-item" href="mesa.jsp">Mesa</a>
                                <a class="dropdown-item" href="banho.jsp">Banho</a>
                            </div>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="#sobre">Sobre</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="#contato">Contato</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
 
        <!-- Categorias e Logo -->
       <div class="container">
            <div class="row justify-content-md-center">
                <div class="col-lg-9 col-sm-12">
                    <!--Descriçao do Produo-->
                    <div class="card text-center">
                        <div class="jumbotron">
                            <h1 class="display-4">Conjunto de Banheiro</h1>
                            <br/>
                            <div class="text-center">
                                <img src="img/Banho/img1.jpg" class="rounded img-fluid" alt=""/>
                            </div>
                            <p class="lead">Um lindo conjunto para harmonizar e embelezar o seu banheiro.</p>
                            <hr class="my-4">
                            <p><span>Tamanho: </span>30cmX30cm</p>
                            <p><span>Material: </span>30cmX30cm</p>
                            <p><span>Cor: </span>30cmX30cm</p>
                            <hr class="my-4">
                            <p class="lead">Clique em "Comprar" para ter esse lindo produto.</p>
                            <a class="btn btn-primary btn-lg" href="#" role="button">Comprar</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Rodapé -->
        <footer class="py-5">
            <div class="container">
                <p class="m-0 text-center text-white">Nice Decoraçõess &copy;</p>
            </div>
        </footer>
    </body>
</html>
