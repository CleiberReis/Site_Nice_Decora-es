<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="img/img.ico" rel="icon">
        <title>Nice Decorações</title>

        <!-- Bootstrap / Validate / JQuery core CSS -->
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

        <!--Código Script do Formulario-->
        <script type="text/javascript">
            $(document).ready(function valformulario() {

                $("#formulario").validate({
                    rules: {
                        nome: {
                            required: true,
                            maxlength: 80
                        },
                        telefone: {
                            required: true
                        },
                        email: {
                            required: true,
                            email: true
                        },
                        mensagem: {
                            required: true
                        },
                        termo: {
                            required: true
                        }
                    }
                })
                $("#telefone").mask("(00)00000-0000")
            })

        </script>
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
                    <strong>Nice Decorações</strong>
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
                        <li class="nav-item active">
                            <a class="nav-link" href="#sobre">Sobre</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="#contato">Contato</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="administrador/login.jsp"><img src="img/Inicial/boss.png" class="img-fluid" alt="" style="width: 40px; height: 40px; margin-left: 10px;"/></a>             
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


        <!-- Slide de Apresentação -->

        <div class="container">
            <div class="row justify-content-md-center">
                <div class="col-lg-9 col-sm-12">
                    <br/>
                    <br/>
                    <hr>
                    <br/>
                    <br/>
                    <div class="cabecalho">
                        <h3 class="titulo">Principais Produtos</h3>
                        <p class="descricao">Conheça e compre nossos produtos</p>
                    </div>

                    <div class="row">
                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="https://produto.mercadolivre.com.br/MLB-1054040419-jogo-americano-_JM"><img class="card-img-top" src="img/Mesa/img7.jpeg" alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="https://produto.mercadolivre.com.br/MLB-1054040419-jogo-americano-_JM">Jogo Americano</a>
                                    </h4>
                                    <h5>R$15,00</h5>
                                    <p class="card-text">Surpreenda suas visitas com um lindo jogo americano rendado.</p>
                                    <p class="card-text">Clique no item para saber mais!</p>
                                </div>
                                <div class="card-footer">
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="#"><img class="card-img-top" src="img/Cama/img1.jpg" alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="#">Jogo de Cama</a>
                                    </h4>
                                    <h5>R$00,00</h5>
                                    <p class="card-text">Jogo de Cama estampado.</p>
                                </div>
                                <div class="card-footer">
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="#"><img class="card-img-top" src="img/Mesa/img1.jpg" alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="#">Pano de Prato</a>
                                    </h4>
                                    <h5>R$00,00</h5>
                                    <p class="card-text">Pano de prato para sua cozinha, estampado com a mais diversas variedades de imagens.</p>
                                </div>
                                <div class="card-footer">
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="#"><img class="card-img-top" src="img/Cama/img4.jpg" alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="#">Item quatro</a>
                                    </h4>
                                    <h5>R$00,00</h5>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                                </div>
                                <div class="card-footer">
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="#"><img class="card-img-top" src="img/Mesa/img2.jpg" alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="#">Item cinco</a>
                                    </h4>
                                    <h5>R$00,00</h5>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit amet.</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="#"><img class="card-img-top" src="img/Banho/img6.jpg" alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="#">Item seis</a>
                                    </h4>
                                    <h5>R$00,00</h5>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--Sobre-->
                    <section id="sobre">
                        <br/>
                        <br/>
                        <hr>
                        <br/>
                        <br/>

                        <div class="cabecalho">
                            <h3 class="titulo">Sobre</h3>
                            <p class="descricao">Saiba mais sobre nossa loja.</p>
                        </div>
                        <div id="sobreDescricao">
                            <p>
                                Nice Decorações é um loja familiar que trabalha com material têxtil com foco em produtos decorativos de cama, mesa e banho.
                            </p>
                            <p>
                                Tudo para o seu lar você encontra nas lojas Nice Decorações, deixe sua casa aconchegante gastando pouco.
                            </p>
                        </div>
                        <!--Mapa e texto de endereço para localização-->
                        <div class="text-center">
                            <h4><span style="font-weight: bold;">Onde nos encontrar</span></h4>
                        </div>
                        <div id="mapaLocalizacao">
                            <p>Rua Domingos Garcia, 181, Aparecida-SP.</p>
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3676.838015365177!2d-45.23534938551016!3d-22.845481741428806!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ccc36618241431%3A0x821f481dff44bc05!2sR.+Domingos+Garc%C3%ADa%2C+181%2C+Aparecida+-+SP%2C+12570-000!5e0!3m2!1spt-BR!2sbr!4v1528940143860" width="100%" height="70%" frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div>
                        <br/>
                        <div class="text-center">
                        <p>
                            <strong>Nos visite no Facebook </strong> <a href="https://www.facebook.com/nice.barbosa.73700"><img src="img/Inicial/facebook.png"/></a>
                        </p>
                        </div>
                    </section>

                    <!--Contato-->
                    <section id="contato">
                        <br/>
                        <br/>
                        <hr>
                        <br/>
                        <br/>
                        <div class="cabecalho">
                            <h3 class="titulo">Contato</h3>
                            <p class="descricao">Deixe sua mensagem para nós.</p>
                        </div>
                        <div class="container wow fadeInUp">
                            <div class="row justify-content-center">
                                <div class="col-lg-8 col-md-8 col-sm-6">
                                    <div class="form">
                                        <%
                                            String status = request.getParameter("status");
                                            if (status != null) {
                                                if (status.equals("OK")) {
                                                    out.println("Mensagem enviada com sucesso!");
                                                }
                                            }
                                        %>

                                        <form class="form-check" name="formulario" id="formulario" method="post" action="usuario/inserir.jsp" onsubmit="return valFormulario()">
                                            <div class="form-group">
                                                <input type="text" name="nome" class="form-control" id="nome" placeholder="Digite seu nome"/>
                                            </div>
                                            <div class="form-group">
                                                <input type="email" class="form-control" name="email" id="email" placeholder="exemplo@exemplo.com.br"/>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="telefone" id="telefone" placeholder="(99)99999-9999"/>
                                            </div>
                                            <div class="form-group">
                                                <textarea class="form-control" name="mensagem" rows="5" id="mensagem" placeholder="Deixe sua mensagem"></textarea>
                                            </div>
                                            <div class="form-group text-center" id="termoForm">
                                                <input type="checkbox" name="termo" id="termo" value="termo" > Ao usar este formulário, você concorda com o armazenamento e o manuseio de seus dados por este site.
                                            </div>
                                            <div class="text-center">
                                                <button class="btn btn-dark text-center" type="submit">Enviar Mensagem<span class="oi oi-icon-name" title="icon name" aria-hidden="true"></span></button>
                                            </div>
                                            <br/>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <!-- Rodapé -->
        <footer class="py-5">
            <div class="container">
                <p class="m-0 text-center text-white">Nice Decorações &copy; 2018 - Todos os direitos reservados</p>
            </div>
        </footer>
    </body>
</html>
