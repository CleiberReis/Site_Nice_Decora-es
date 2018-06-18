<%@page import="persistencia.ProdutoBD"%>
<%
    String codigo = request.getParameter("codigo");
    ProdutoBD.excluir(Integer.parseInt(codigo));
    response.sendRedirect("listarProduto.jsp");
%>