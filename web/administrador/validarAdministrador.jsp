<%@page import="dominio.Administrador"%>
<%
if (session.getAttribute("administrador")== null){
    Administrador administradorLogado = (Administrador) session.getAttribute("administrador");
}else{
    response.sendRedirect("login.jsp");
}
%>