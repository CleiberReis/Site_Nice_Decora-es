<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de produtos</title>
    </head>
    <body>
        <h1>Cadastro de produtos</h1>
        <a href="listarProduto.jsp">Listar produtos</a>
        <%
        String status = request.getParameter("status");
        if (status != null){
            if (status.equals("OK")){
                out.println("Produto cadastrado com sucesso.");
            }
        }
        %>
        
        <form method="post" name="cadastroProduto" action="inserir.jsp">
            <label>Nome</label>
            <input type="text" name="nome"/>
            <br />
            <label>Endereço</label>
            <input type="text" name="endereco"/>
            <br />
            <label>Classe Social</label>
            <input type="text" name="classeSocial"/>
            <br />
            <label>Telefone</label>
            <input type="tel" name="telefone"/>
            <br />
            <input type="submit" value="Salvar" />
        </form>
    </body>
</html>