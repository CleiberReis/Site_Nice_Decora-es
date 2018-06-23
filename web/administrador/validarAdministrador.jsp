<%@page import="dominio.Administrador"%>
<%
Administrador administradorLogado = null;   
if (session.getAttribute("administrador") != null){
    administradorLogado = (Administrador) session.getAttribute("administrador");
}else{
    response.sendRedirect("login.jsp");
}
%>