<%@page import="persistencia.ClienteBD"%>
<%@page import="dominio.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de usuários</title>
    </head>
    <body>
        <%
            ArrayList<Cliente> lista = ClienteBD.listar();
        %>
        <table>
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>telefone</th>
                    <th>Mensagem</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (int i = 0; i < lista.size(); i++) {
                        Cliente cadaCliente = lista.get(i);
                %>
                <tr>
                    <td><%=cadaCliente.getCodigo()%></td>
                    <td><%=cadaCliente.getNome()%></td>
                    <td><%=cadaCliente.getEmail()%></td>
                    <td><%=cadaCliente.getTelefone()%></td>
                    <td><%=cadaCliente.getMensagem()%></td>
                    <td>
                        <a href="excluirContato.jsp?codigo=<%=cadaCliente.getCodigo()%>">Excluir</a>
                    </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </body>
</html>
