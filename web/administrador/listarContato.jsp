<%@page import="persistencia.ClienteBD"%>
<%@page import="dominio.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="../img/img.ico" rel="icon">
        <title>Nice Decorações</title>

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
       <header>
            <div id="header" class="img-fluid">
            </div>
        </header>
        <!-- Barra de Navegação -->
        <nav class="navbar navbar-expand-lg navbar-dark sticky-top">
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
        <br/>
        <br/>
        <%
            ArrayList<Cliente> lista = ClienteBD.listar();
        %>
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>telefone</th>
                    <th>Mensagem</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (int i = 0; i < lista.size(); i++) {
                        Cliente cadaCliente = lista.get(i);
                %>
                <tr>
                    <td><%=cadaCliente.getCodigo()%></td>
                    <td><%=cadaCliente.getNome()%></td>
                    <td><%=cadaCliente.getEmail()%></td>
                    <td><%=cadaCliente.getTelefone()%></td>
                    <td><%=cadaCliente.getMensagem()%></td>
                    <td>
                        <a href="excluirContato.jsp?codigo=<%=cadaCliente.getCodigo()%>" class="btn btn-block btn-outline-danger">Excluir</a>
                    </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        <footer class="py-5">
            <div class="container">
                <p class="m-0 text-center text-white">Nice Decorações &copy; 2018 - Todos os direitos reservados</p>
            </div>
        </footer>
    </body>
</html>
