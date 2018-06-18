<%@page import="dominio.Produto"%>
<%@page import="persistencia.ProdutoBD"%>
<%
    String nomeProduto = request.getParameter("nomeProduto");
    String categoria = request.getParameter("categoria");
    String preco = request.getParameter("preco");
    String cor = request.getParameter("cor");
    String material = request.getParameter("material");
    String tamanho = request.getParameter("tamanho");
    String descricao = request.getParameter("descricao");
   
    Produto produto = new Produto();
    produto.setNome(nomeProduto);
    //produto.setCategoria(categoria);
    produto.setPreco(Double.parseDouble(preco));
    produto.setCor(cor);
    produto.setMaterial(material);
    produto.setTamanho(Double.parseDouble(tamanho));
    produto.setDescricao(descricao);

// A classe de persistência produtoBD inseri o usuário no banco de dados.
    ProdutoBD.inserir(produto);
    response.sendRedirect("cadastrarProduto.jsp?status=OK");
%>