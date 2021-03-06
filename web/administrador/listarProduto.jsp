<%@page import="java.io.File"%>
<%@page import="persistencia.ProdutoBD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dominio.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="../img/img.ico" rel="icon">
        <title>Lista de Produtos</title>

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

    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
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

        <!-- Tabela de produtos cadastrados (INICIO) -->
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <br/><br/>
                    <h1>Lista de Produtos</h1>
                    <br/><hr/>
                    <a href="cadastrarProduto.jsp" class="btn btn-primary">Cadastrar mais produtos</a>
                    <br/>
                </div>
            </div>

            <%
                ArrayList<Produto> lista = ProdutoBD.listar();
            %>

            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Código</th>
                        <th>Nome</th>
                        <th>Preço</th>
                        <th>Cor</th>
                        <th>Material</th>
                        <th>Tamanho</th>
                        <th>Descrição</th>
                        <th>Categoria</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>

                    <%
                        for (int i = 0; i < lista.size(); i++) {
                            Produto cadaProduto = lista.get(i);
                            String nomeCategoria = "";
                            if (cadaProduto.getCategoria() != null) {
                                nomeCategoria = cadaProduto.getCategoria().getNome();
                            }
                    %>

                    <tr>
                        <td><%=cadaProduto.getCodigo()%></td>
                        <td><%=cadaProduto.getNomeProduto()%></td>
                        <td><%=cadaProduto.getPreco()%></td>
                        <td><%=cadaProduto.getCor()%></td>
                        <td><%=cadaProduto.getMaterial()%></td>
                        <td><%=cadaProduto.getTamanho()%></td>
                        <td><%=cadaProduto.getDescricao()%></td>
                        <td><%=nomeCategoria%></td>
                        <td>
                            <%
                                String filePath = "C:\\Backup OS 15044 - Lisiane\\Backup\\D\\Meus Documentos\\FATEC\\Semestre 02\\pi\\Site Nice\\Site_Nice_Decora-es\\web\\fotos\\";
                                File file = new File(filePath + cadaProduto.getCodigo() + ".jpg");
                                if (file.exists()) {
                            %>
                            <img src="../fotos/<%=cadaProduto.getCodigo()%>.jpg" width="80" />
                            <%
                                }
                            %>
                            <form name="formCadastro" enctype="multipart/form-data" method="post" action="upload.jsp?codigo=<%=cadaProduto.getCodigo()%>">
                                <input type="file" name="foto" />
                                <input type="submit" name="enviar" value="Enviar foto" />
                            </form>
                        </td>
                        <td>
                            <a href="excluirProduto.jsp?codigo=<%=cadaProduto.getCodigo()%>" class="btn btn-block btn-outline-danger">Excluir</a>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <!-- Tabela de produtos cadastrados (FIM) --> 
        </div>
        <footer class="py-5">
            <div class="container">
                <p class="m-0 text-center text-white">Nice Decorações &copy; 2018 - Todos os direitos reservados</p>
            </div>
        </footer>
    </body>
</html>
