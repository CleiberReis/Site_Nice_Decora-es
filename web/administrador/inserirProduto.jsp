<%@page import="dominio.Produto"%>
<%@page import="persistencia.ProdutoBD"%>
<%
    String nome = request.getParameter("nome");
    String endereco = request.getParameter("endereco");
    String telefone = request.getParameter("telefone");
    String classeSocial = request.getParameter("classeSocial");

    Produto produto = new Produto();
    produto.setNome(nome);
    produto.setEndereco(endereco);
    produto.setTelefone(telefone);
    produto.setClasseSocial(classeSocial);

// A classe de persist�ncia produtoBD inseri o usu�rio no banco de dados.
    ProdutoBD.inserir(produto);
    response.sendRedirect("cadastrar.jsp?status=OK");
%>