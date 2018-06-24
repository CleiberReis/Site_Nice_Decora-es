package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Categoria;
import java.io.File; // arquivo
import java.io.FileWriter; //escritor de arquivo
import java.util.ArrayList; // vetor

public class CategoriaBD {

    private static String caminho = "X";

    private static ArrayList<Categoria> lista = new ArrayList<Categoria>();

    //adiciona um objeto da classe Usuario 
    //na lista que simula o banco de dados
    public static void inserir(Categoria categoria) {
        lerXml(); //Lê o XML e preenche a lista de usuario

        //pega o último usuário cadastrado
        int ultimaPosicao = lista.size() - 1;
        if (ultimaPosicao >= 0) {
            Categoria ultimoCategoria = lista.get(ultimaPosicao);
            categoria.setCodigo(ultimoCategoria.getCodigo() + 1);
        } else {
            //Se não tem ninguém na lista o código é um.
            categoria.setCodigo(1);
        }

        lista.add(categoria); // Adiciona um usuario no final da lista
        salvarXml(); //Salva a lista atualizada com a adição do novo usuario
    }

    public static void alterar(Categoria categoria) {
        lerXml();
        excluir(categoria.getCodigo());
        inserir(categoria);
        salvarXml();
    }

    //recebe o atributo que identifica cada objeto
    //da classe Usuario
    public static void excluir(int codigo) {
        lerXml();
        for (int i = 0; i < lista.size(); i++) {
            Categoria cadaCategoria = lista.get(i);

            //procura o usuario que tem o CPF igual 
            //Ã  variÃ¡vel "cpf", que tÃ¡ chegando entre
            //os parÃªnteses
            if (cadaCategoria.getCodigo() == codigo) {
                lista.remove(i);
                /*.equals serve para comparar string */
            }
        }
        salvarXml();
    }

    public static ArrayList<Categoria> listar() {
        lerXml();
        //retorna todos os objetos do banco de dados
        return lista;
    }

    public static Categoria getBycodigo(int codigo) {
        lerXml();
        Categoria categoriaEncontrado = null;
        for (int i = 0; i < lista.size(); i++) {
            Categoria cadaCategoria = lista.get(i);

            //procura o usuario que tem o CPF igual 
            //Ã  variÃ¡vel "cpf", que tÃ¡ chegando entre
            //os parÃªnteses
            if (cadaCategoria.getNome().equals(codigo)) {
                categoriaEncontrado = cadaCategoria;
                break;
            }
        }
        return categoriaEncontrado;
    }

    private static void lerXml() {
        File arquivo = new File(caminho + "categoriaes.xml");
        if (arquivo.exists()) {
            //armazenar XML no vetor
            XStream xstream = new XStream();
            xstream.alias("categoria", Categoria.class);
            lista = (ArrayList<Categoria>) xstream.fromXML(arquivo);
        } else {
            lista = new ArrayList<Categoria>();
        }
    }

    private static void salvarXml() {
        XStream xstream = new XStream();
        xstream.alias("categoria", Categoria.class);
        try {
            FileWriter escritor = new FileWriter(caminho + "categoriaes.xml");
            escritor.write(xstream.toXML(lista));
            escritor.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

    public static Categoria buscarPorCodigo(int codigo) {
        for (int i = 0; i < lista.size(); i++) {
            Categoria cadaCategoria = lista.get(i);

            if (cadaCategoria.getCodigo() == codigo) {
                return cadaCategoria;
            }
        }

        return null;
    }

}
