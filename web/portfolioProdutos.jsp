<%@page import="persistencia.ProdutoBD"%>
<%@page import="dominio.Produto"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="img/img.ico" rel="icon">
        <title>Nice Decora��es</title>

        <!-- Bootstrap / Validate / JQuery / CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <link href="animate/animate.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <header>
            <div style="background-image: url(img/Inicial/imagemPrincipal.jpg); height: 400px; width: 100%;" class="img-fluid">
            </div>
        </header>
        <!-- Barra de Navega��o -->
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
                                <a class="dropdown-item" href="portfolioProdutos.jsp?categoriaEscolhida=Cama">Cama</a>
                                <a class="dropdown-item" href="portfolioProdutos.jsp?categoriaEscolhida=Mesa">Mesa</a>
                                <a class="dropdown-item" href="portfolioProdutos.jsp?categoriaEscolhida=Banho">Banho</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <br/><br/>
        <!-- Categorias e Logo -->
        <div class="container">
            <div class="row justify-content-md-center">
                <div class="col-lg-9 col-sm-12">
                    <!--Portifolio de Produtos-->
                    <div class="cabecalho">
                        <%
                            String categoriaEscolhida = request.getParameter("categoriaEscolhida");
                        %>
                        <h3 class="titulo"><%=categoriaEscolhida%></h3>
                        <p class="descricao">Conhe�a e compre nossos produtos para seu quarto.</p>
                    </div>
                    <hr/>
                    <div class="row">
                        <%
                            //listando os produtos na p�gina de acordo com a categoria escolhida pelo usuario
                            ArrayList<Produto> produtos = ProdutoBD.listar();
                            Produto cadaProduto = null;
                            for (int i = 0; i < produtos.size(); i++) {
                                cadaProduto = produtos.get(i);
                                if (cadaProduto.getCategoria().getNome().equals(categoriaEscolhida)) {
                        %>
                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="<%=cadaProduto.getLinkProduto()%>"><img class="card-img-top" src="img/Cama/img1.jpg" alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="<%=cadaProduto.getLinkProduto()%>"><%=cadaProduto.getNomeProduto()%></a>
                                    </h4>
                                    <h5>R$<%=cadaProduto.getPreco()%></h5>
                                    <p class="card-text"><%=cadaProduto.getDescricao()%></p>
                                    <p class="card-text">Clique no item para saber mais!</p>
                                </div>
                                <div class="card-footer">
                                </div>
                            </div>
                        </div>
                        <%
                                }
                            }
                        %>
                    </div>

                    <br/>
                    <hr>
                    <br/>

                </div>
            </div>
        </div>
        <!-- Rodap� -->
        <footer class="py-5">
            <div class="container">
                <p class="m-0 text-center text-white">Nice Decora��ess &copy;</p>
            </div>
        </footer>
    </body>
</html>
