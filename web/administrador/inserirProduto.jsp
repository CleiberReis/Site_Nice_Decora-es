<%@page import="persistencia.CategoriaBD"%>
<%@page import="dominio.Categoria"%>
<%@page import="dominio.Produto"%>
<%@page import="persistencia.ProdutoBD"%>

<%
    String nomeProduto = request.getParameter("nomeProduto");
    String preco = request.getParameter("preco");
    String cor = request.getParameter("cor");
    String material = request.getParameter("material");
    String tamanho = request.getParameter("tamanho");
    String descricao = request.getParameter("descricao");
    String codigoCategoria = request.getParameter("categoria");
    
    Categoria categoria = CategoriaBD.buscarPorCodigo(Integer.parseInt(codigoCategoria));
   
    Produto produto = new Produto();
    produto.setNome(nomeProduto);
    produto.setPreco(Double.parseDouble(preco));
    produto.setCor(cor);
    produto.setMaterial(material);
    produto.setTamanho(Double.parseDouble(tamanho));
    produto.setDescricao(descricao);
    produto.setCategoria(categoria);

// A classe de persistência produtoBD insere o usuário no banco de dados.
    ProdutoBD.inserir(produto);
    response.sendRedirect("cadastrarProduto.jsp?status=OK");
%>