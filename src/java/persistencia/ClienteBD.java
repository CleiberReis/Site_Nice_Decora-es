package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Cliente;
import java.io.File; // arquivo
import java.io.FileWriter; //escritor de arquivo
import java.util.ArrayList; // vetor

public class ClienteBD {

    private static String caminho = "C:\\Users\\Desiree\\Desktop\\ProjetoNice\\Site_Nice_Decora-es\\";

    private static ArrayList<Cliente> lista = new ArrayList<Cliente>();

    //adiciona um objeto da classe Usuario 
    //na lista que simula o banco de dados
    public static void inserir(Cliente cliente) {
        lerXml(); //Lê o XML e preenche a lista de usuario

        //pega o último usuário cadastrado
        int ultimaPosicao = lista.size() - 1;
        if (ultimaPosicao >= 0) {
            Cliente ultimoCliente = lista.get(ultimaPosicao);
            cliente.setCodigo(ultimoCliente.getCodigo() + 1);
        } else {
            //Se não tem ninguém na lista o código é um.
            cliente.setCodigo(1);
        }

        lista.add(cliente); // Adiciona um usuario no final da lista
        salvarXml(); //Salva a lista atualizada com a adição do novo usuario
    }

    public static void alterar(Cliente cliente) {
        lerXml();
        excluir(cliente.getCodigo());
        inserir(cliente);
        salvarXml();
    }

    //recebe o atributo que identifica cada objeto
    //da classe Usuario
    public static void excluir(int codigo) {
        lerXml();
        for (int i = 0; i < lista.size(); i++) {
            Cliente cadaCliente = lista.get(i);

            //procura o usuario que tem o CPF igual 
            //Ã  variÃ¡vel "cpf", que tÃ¡ chegando entre
            //os parÃªnteses
            if (cadaCliente.getCodigo() == codigo) {
                lista.remove(i);
                /*.equals serve para comparar string */
            }
        }
        salvarXml();
    }

    public static ArrayList<Cliente> listar() {
        lerXml();
        //retorna todos os objetos do banco de dados
        return lista;
    }

    public static Cliente getBycodigo(int codigo) {
        lerXml();
        Cliente clienteEncontrado = null;
        for (int i = 0; i < lista.size(); i++) {
            Cliente cadaCliente = lista.get(i);

            //procura o usuario que tem o CPF igual 
            //Ã  variÃ¡vel "cpf", que tÃ¡ chegando entre
            //os parÃªnteses
            if (cadaCliente.getNome().equals(codigo)) {
                clienteEncontrado = cadaCliente;
                break;
            }
        }
        return clienteEncontrado;
    }

    private static void lerXml() {
        File arquivo = new File(caminho + "clientees.xml");
        if (arquivo.exists()) {
            //armazenar XML no vetor
            XStream xstream = new XStream();
            xstream.alias("cliente", Cliente.class);
            lista = (ArrayList<Cliente>) xstream.fromXML(arquivo);
        } else {
            lista = new ArrayList<Cliente>();
        }
    }

    private static void salvarXml() {
        XStream xstream = new XStream();
        xstream.alias("cliente", Cliente.class);
        try {
            FileWriter escritor = new FileWriter(caminho + "clientees.xml");
            escritor.write(xstream.toXML(lista));
            escritor.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
}