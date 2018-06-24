<%@page import="java.util.ArrayList"%>
<%@page import="dominio.Categoria"%>
<%@page import="persistencia.CategoriaBD"%>
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
                        nomeProduto: {
                            required: true,
                            maxlength: 80
                        },
                        preco: {
                            required: true
                        },
                        cor: {
                            required: true
                        },
                        material: {
                            required: true
                        },
                        tamanho: {
                            required: true
                        },
                        descricao: {
                            required: true,
                            minlength: 8
                        },
                        categoria: {
                            required: true
                        }
                    },
                    submitHandler: function (form) {
                        $.notify("Produto cadastrado com sucesso!", "success");
                        form.submit();//usando isso, o formulario é enviado
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
                            <a class="nav-link" href="cp.jsp">Painel de Controle
                            </a>
                        </li>
                    </ul>
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
                                    <form class="form-check" name="formulario" id="formulario" method="post" action="inserirProduto.jsp" onsubmit="return valFormulario()">
                                        <div class="row justify-content-center">
                                            <div class="col-lg-8 col-md-8 col-sm-8 text-center">
                                                <a href="listarProduto.jsp" class="btn btn-primary">Lista de Produtos</a>
                                            </div>
                                            <!-- Mensagem de Cadastro dos produtos -->
                                            <%
                                                String status = request.getParameter("status");
                                                if (status != null) {
                                                    if (status.equals("OK")) {
                                                        out.println("Produto cadastrado com sucesso.");
                                                    }
                                                }
                                            %>
                                        </div>
                                        <br/> 
                                        <div class="form-group">
                                            <input type="text" name="nomeProduto" class="form-control" id="produto" placeholder="Digite o nome do produto"/>
                                        </div>
                                        <div class="form-group">
                                            <%
                                                ArrayList<Categoria> categorias = CategoriaBD.listar();
                                            %>
                                            <select name="categoria" class="form-control">
                                                <option value="">Escolha uma categoria...</option>
                                                <%
                                                    for (int i = 0; i < categorias.size(); i++) {
                                                        Categoria cadaCategoria = categorias.get(i);
                                                %>
                                                <option value="<%=cadaCategoria.getCodigo()%>"><%=cadaCategoria.getNome()%></option>
                                                <%
                                                    }
                                                %>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="preco" placeholder="Digite o preço"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="cor" placeholder="Digite a cor"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="material" placeholder="Digite o material"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="tamanho" placeholder="Digite o tamanho"/>
                                        </div>
                                        <div class="form-group">
                                            <textarea class="form-control" name="descricao" rows="5" placeholder="Digite a descrição do produto"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label> Envie a imagem do produto abaixo:

                                                <input type="file" name="imagem" accept="image/*">
                                            </label>
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
        <!-- Rodapé -->
        <footer class="py-5" style="background-color: #2F9C95;">
            <div class="container">
                <p class="m-0 text-center text-white">Nice Decorações &copy; 2018 - Todos os direitos reservados</p>
            </div>
        </footer>
    </body>
</html>
