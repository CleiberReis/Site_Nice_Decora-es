<%@page import="persistencia.ProdutoBD"%>
<%
    String codigo = request.getParameter("codigo");
    ProdutoBD.alterar(Integer.parseInt(codigo));
    response.sendRedirect("listarProduto.jsp");
%>