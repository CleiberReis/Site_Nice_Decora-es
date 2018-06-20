<%@page import="persistencia.ClienteBD"%>
<%@page import="dominio.Cliente"%>
<%
String nome = request.getParameter("nome");
String email = request.getParameter("email");
String telefone = request.getParameter("telefone");
String mensagem = request.getParameter("mensagem");

Cliente cliente = new Cliente();//método construtor, tem a funcão de construir um objeto usuario.
cliente.setNome(nome);
cliente.setEmail(email);
cliente.setTelefone(telefone);
cliente.setMensagem(mensagem);

// a classe de persistencia Usuario BD insere o usuario no banco de dados.
ClienteBD.inserir(cliente); // se tem parenteses é um método.
response.sendRedirect("../index.jsp?status=OK");
%>