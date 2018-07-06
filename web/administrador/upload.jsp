<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItemStream"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItemIterator"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
<%@page import="persistencia.CategoriaBD"%>
<%@page import="dominio.Categoria"%>
<%@page import="persistencia.ProdutoBD"%>
<%@page import="dominio.Produto"%>
<%
String codigo = request.getParameter("codigo"); //código do usuário
File file ;
//int maxMemSize = 2000 * 1024; //2MB
String filePath = "C:\\Backup OS 15044 - Lisiane\\Backup\\D\\Meus Documentos\\FATEC\\Semestre 02\\pi\\Site Nice\\Site_Nice_Decora-es\\web\\fotos\\";

DiskFileItemFactory factory = new DiskFileItemFactory();
//factory.setSizeThreshold(maxMemSize);
//factory.setRepository(new File(filePath));
ServletFileUpload upload = new ServletFileUpload(factory);
try{       
   FileItemIterator iterator = upload.getItemIterator(request);
   FileItemStream fi = (FileItemStream) iterator.next(); 
   if (fi.getFieldName().equals("foto")){
        file = new File( filePath + codigo + ".jpg") ;
        
        InputStream is = new BufferedInputStream(fi.openStream());
        BufferedOutputStream output = null;

        try {
            output = new BufferedOutputStream(new FileOutputStream(file));
            int data = -1;
            while ((data = is.read()) != -1) {
                output.write(data);
            }
        } finally {
            is.close();
            output.close();
        }
   }
}catch(Exception ex) {
   System.out.println("Houve um erro no upload do arquivo");
   ex.printStackTrace();
}
response.sendRedirect("listarProduto.jsp");
%>