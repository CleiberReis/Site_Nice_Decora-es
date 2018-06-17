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
                produto: {
                required: true,
                        maxlength: 80
                },
                        descrição: {
                        required: true,
                                minlength: 8
                        },
                        valor: {
                        required: true,
                                minlength: 8
                        },
                }
                })

        </script>
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
                            <a class="nav-link" href="../index.jsp">Principal
                            </a>
                        </li>
                        <li class="nav-item active dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Categorias
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="../cama.jsp">Cama</a>
                                <a class="dropdown-item" href="../mesa.jsp">Mesa</a>
                                <a class="dropdown-item" href="../banho.jsp">Banho</a>
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
        </div>
    </nav>
    <!-- login admm -->
        <br/>
        <br/>
        <div class="cabecalho">
            <h3 class="titulo">Cadastro de Produtos</h3>
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
                                    <form class="form-check" name="formulario" id="formulario" method="post" action="cadastrarProduto.jsp" onsubmit="return valFormulario()">
                                        <div class="row justify-content-center">
                                            <div class="col-lg-8 col-md-8 col-sm-8 text-center">
                                               
                                            </div>
                                        </div>
                                        <br/> 
                                        <div class="form-group">
                                            <input type="text" name="produto" class="form-control" id="produto" placeholder="Digite nome do produto"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="categoria" id="senha" placeholder="categoria"/>
                                        </div>
                                        <div class="form-group">
                                                <textarea class="form-control" name="descricao" rows="5" id="descricao" placeholder="Descrição do Produto"></textarea>
                                            </div>
                                        <div class="form-group">
                                                <input type="file" name="imagem" accept="image/*">
                                        </div>
                                        
                                        
                                        <div class="text-center">
                                            <button class="btn btn-dark text-center" type="submit" >Salvar</button>
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
</div>
</div>
<!-- Rodapé -->
<footer class="py-5 badge-info">
    <div class="container">
        <p class="m-0 text-center text-white">Nice Decorações &copy; 2018 - Todos os direitos reservados</p>
    </div>
</footer>
</body>
</html>
