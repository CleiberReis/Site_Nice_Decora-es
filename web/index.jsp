<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="img/img.ico" rel="icon">
        <title>Nice Decora��es</title>

        <!-- Bootstrap / Validate / JQuery core CSS -->
        <link href="edit/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="edit/jquery/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="edit/jquery/jquery.mask.min.js" type="text/javascript"></script>
        <script src="edit/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="edit/jquery/jquery.validate.min.js" type="text/javascript"></script>
        <script src="edit/bootstrap/js/localization/messages_pt_BR.js" type="text/javascript"></script>
        <script src="edit/jquery/notify.min.js" type="text/javascript"></script>
        <script src="edit/bootstrap/js/validacao.js" type="text/javascript"></script>
        <script src="edit/bootstrap/js/bootstrap.bundle.min.js"></script>

        
        <link href="css/style.css" rel="stylesheet">
<!--C�digo Script do Formulario-->
        <script type="text/javascript">
            $(document).ready(function valformulario() {

                $("#formulario").validate({
                    rules: {
                        nome: {
                            required: true,
                            maxlength: 80
                        },
                        telefone: {
                            required: true,
                            minlength: 8
                        },
                        email: {
                            required: true,
                            temArroba: true,
                            email: true
                        },
                        mensagem: {
                            required: true,
                        }
                    }
                })
                $("#telefone").mask("(00)00000-0000")
            })
        </script>

    </head>

 <body>

<!-- Barra de Navega��o -->
        <nav class="navbar navbar-expand-lg navbar-dark badge-info fixed-top">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">
                    <strong>Nice Decora��es</strong>
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
                        <li class="nav-item">
                            <a class="nav-link" href="#sobre">Sobre</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#contato">Contato</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
<!-- Categorias e Slide de Apresenta��o -->
        <div class="container">
            <div class="row">
                <div id="ocultoSmart" class="col-lg-3">
                    <br/>
                    <h3 class="text-center my-4">Categorias</h3>
                    <hr>
                    <div class="text-center list-group">
                         <a href="cama.jsp" class="list-group-item">Cama</a>
                        <a href="mesa.jsp" class="list-group-item">Mesa</a>
                        <a href="banho.jsp" class="list-group-item">Banho</a>
                    </div>

                </div>
                <div class="col-lg-9 col-sm-12">
                    <div class="cabecalho">
                        <br/>
                        <h2 class="titulo">Bem-vindo ao Nice Decora��es
                            <img id=logo src="img/img.ico" class="img-fluid"/></h2>
                    </div>

                    <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active">
                                <img class="d-block img-fluid" src="img/Slide/img.jpg" alt="First Slide"/>
                            </div>
                            <div class="carousel-item">
                                <img class="d-block img-fluid" src="img/Slide/img1.jpg" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block img-fluid" src="img/Slide/img2.jpg" alt="Third slide">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Anterior</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Pr�ximo</span>
                        </a>
                    </div>

                    <br/>
                    <br/>
                    <hr>
                    <br/>
                    <br/>

<!--Portifolio de Principais Produtos-->
                    <div class="cabecalho">
                        <h3 class="titulo">Principais Produtos</h3>
                        <p class="descricao">Conhe�a e compre nossos produtos.</p>
                    </div>

                    <div class="row">
                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="#"><img class="card-img-top" src="img/Inicial/img1.jpg" alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="#">Toalha de Renda</a>
                                    </h4>
                                    <h5>R$00,00</h5>
                                    <p class="card-text">Toalha de mesa em renda vermelha, perfeita para decora��o de mesa.</p>
                                    <p class="card-text">Clique no item para saber mais!</p>
                                </div>
                                <div class="card-footer">
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="#">Item dois</a>
                                    </h4>
                                    <h5>R$00,00</h5>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit amet.</p>
                                </div>
                                <div class="card-footer">
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="#">Item tr�s</a>
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
                                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
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
                                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
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
                                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
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
                                Lorem Ipsum � simplesmente uma simula��o de texto da ind�stria tipogr�fica e de impressos, e vem sendo utilizado desde o s�culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu n�o s� a cinco s�culos, como tamb�m ao salto para a editora��o eletr�nica, permanecendo essencialmente inalterado. Se popularizou na d�cada de 60, quando a Letraset
                                lan�ou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editora��o eletr�nica como Aldus PageMaker.
                            </p>
                        </div>
                    </section>

                    <br/>
                    <br/>
                    <hr>
                    <br/>
                    <br/>

<!--Contato-->
                    <section id="contato">
                        <div class="cabecalho">
                            <h3 class="titulo">Contato</h3>
                            <p class="descricao">Deixe sua mensagem para n�s.</p>
                        </div>

                        <div class="container wow fadeInUp">
                            <div class="row justify-content-center">

                                <div class="col-lg-8 col-md-8 col-sm-6">
                                    <div class="form">
                                        <form class="form-check" name="formulario" id="formulario" method="post" action="salvar.jsp" onsubmit="return valFormulario()">
                                            <div class="form-group">
                                                <input type="text" name="nome" class="form-control" id="nome" placeholder="Digite seu nome"/>
                                            </div>
                                            <div class="form-group">
                                                <input type="email" class="form-control" name="email" id="email" placeholder="Digite seu e-mail"/>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="telefone" id="telefone" placeholder="Celular (99)99999-9999"/>
                                            </div>
                                            <div class="form-group">
                                                <textarea class="form-control" name="mensagem" rows="5" id="mensagem" placeholder="Deixe sua mensagem"></textarea>
                                            </div>
                                            <div class="text-center">
                                                <button class="btn btn-dark text-center" type="submit">Enviar Mensagem</button>
                                            </div>
                                            <br/>
                                        </form>
                                    </div>
                                </div>

                            </div>

                    </section>
                </div>
            </div>
        </div>
<!-- Rodap� -->
        <footer class="py-5 badge-info">
            <div class="container">
                <p class="m-0 text-center text-white">Nice Decora��es &copy;</p>
            </div>
        </footer>
    </body>
</html>

