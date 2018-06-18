<%@page import="persistencia.ProdutoBD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dominio.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link href="../img/img.ico" rel="icon">
        <title>Lista de Produtos.</title>
        
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
        <h1>Lista de Produtos.</h1>
        <a href="cadastrarProduto.jsp">Cadastrar produto.</a>
        
        <%
            ArrayList<Produto> lista = ProdutoBD.listar();
        %>
        
        
        
        
        
        
        
        
        
        
    </body>
</html>
