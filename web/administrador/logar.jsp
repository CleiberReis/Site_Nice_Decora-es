<%@page import="persistencia.AdministradorBD"%>
<%@page import="dominio.Administrador"%>
<%
String login = request.getParameter("login");
String senha = request.getParameter("senha");

Administrador administradorEncontrado = AdministradorBD.procurarPorLoginSenha(login, senha);
if (administradorEncontrado != null){
    session.setAttribute("admininstrador", administradorEncontrado);
    response.sendRedirect("cp.jsp");
}else{
    response.sendRedirect("login.jsp?erro=ADMINISTRADOR_NAO_CADASTRADO");        
}
%>


