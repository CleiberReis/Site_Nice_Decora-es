package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Administrador;
import java.io.File; // arquivo
import java.io.FileWriter; //escritor de arquivo
import java.util.ArrayList; // vetor

public class AdministradorBD {

    private static String caminho = "C:\\Users\\cleib\\Desktop\\Site_Nice_Decora-es\\";

    private static ArrayList<Administrador> lista = new ArrayList<Administrador>();

    //adiciona um objeto da classe Usuario 
    //na lista que simula o banco de dados
    public static void inserir(Administrador administrador) {
        lerXml(); //Lê o XML e preenche a lista de usuario

        //pega o último usuário cadastrado
        int ultimaPosicao = lista.size() - 1;
        if (ultimaPosicao >= 0) {
            Administrador ultimoAdministrador = lista.get(ultimaPosicao);
            administrador.setCodigo(ultimoAdministrador.getCodigo() + 1);
        } else {
            //Se não tem ninguém na lista o código é um.
            administrador.setCodigo(1);
        }

        lista.add(administrador); // Adiciona um usuario no final da lista
        salvarXml(); //Salva a lista atualizada com a adição do novo usuario
    }

    public static void alterar(Administrador administrador) {
        lerXml();
        excluir(administrador.getCodigo());
        inserir(administrador);
        salvarXml();
    }

    //recebe o atributo que identifica cada objeto
    //da classe Usuario
    public static void excluir(int codigo) {
        lerXml();
        for (int i = 0; i < lista.size(); i++) {
            Administrador cadaAdministrador = lista.get(i);

            //procura o usuario que tem o CPF igual 
            //Ã  variÃ¡vel "cpf", que tÃ¡ chegando entre
            //os parÃªnteses
            if (cadaAdministrador.getCodigo() == codigo) {
                lista.remove(i);
                /*.equals serve para comparar string */
            }
        }
        salvarXml();
    }

    public static ArrayList<Administrador> listar() {
        lerXml();
        //retorna todos os objetos do banco de dados
        return lista;
    }

    public static Administrador getBycodigo(int codigo) {
        lerXml();
        Administrador administradorEncontrado = null;
        for (int i = 0; i < lista.size(); i++) {
            Administrador cadaAdministrador = lista.get(i);

            //procura o usuario que tem o CPF igual 
            //Ã  variÃ¡vel "cpf", que tÃ¡ chegando entre
            //os parÃªnteses
            if (cadaAdministrador.getNome().equals(codigo)) {
                administradorEncontrado = cadaAdministrador;
                break;
            }
        }
        return administradorEncontrado;
    }

    private static void lerXml() {
        File arquivo = new File(caminho + "administradores.xml");
        if (arquivo.exists()) {
            //armazenar XML no vetor
            XStream xstream = new XStream();
            xstream.alias("administrador", Administrador.class);
            lista = (ArrayList<Administrador>) xstream.fromXML(arquivo);
        } else {
            lista = new ArrayList<Administrador>();
        }
    }

    private static void salvarXml() {
        XStream xstream = new XStream();
        xstream.alias("administrador", Administrador.class);
        try {
            FileWriter escritor = new FileWriter(caminho + "administradores.xml");
            escritor.write(xstream.toXML(lista));
            escritor.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

    public static Administrador procurarPorLoginSenha(String login, String senha){
        lerXml();
        Administrador administradorEncontrado = null;
        for(int i = 0; i < lista.size(); i++){
            Administrador administrador = lista.get(i);
            if(administrador.getLogin().equals(login) && administrador.getSenha().equals(senha)){
                administradorEncontrado = administrador;
                break;
            }   
        }
        return administradorEncontrado;
    }

}