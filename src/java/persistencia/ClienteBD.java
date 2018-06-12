package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Cliente;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

public class ClienteBD {
    
    private static String caminho = "C:\\Users\\Desiree\\Desktop\\ProjetoNice\\Site_Nice_Decora-es";
    
    private static ArrayList<Cliente> lista = new ArrayList<Cliente>();
    public static void inserir(Cliente cliente){
        lerXml();
        lista.add(cliente);
        salvarXml();
    }
    private static void lerXml(){
        File arquivo=new File(caminho + "clientees.xml");
        if (arquivo.exists()){
            XStream xstream=new XStream();
            xstream.alias("cliente",Cliente.class);
            lista = (ArrayList<Cliente>) xstream.fromXML(arquivo);
        }else{
            lista = new ArrayList<Cliente>();
        }
    }
    
    private static void salvarXml(){
        XStream xstream = new XStream();
        xstream.alias("cliente",Cliente.class);
        try{
            FileWriter escritor=new FileWriter(caminho + "clientees.xml");
            escritor.write( xstream.toXML(lista) );
            escritor.close();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
}