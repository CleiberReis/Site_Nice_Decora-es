package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Produto;
import java.io.File; // arquivo
import java.io.FileWriter; //escritor de arquivo
import java.util.ArrayList; // vetor

public class ProdutoBD {

    private static String caminho = "C:\\Backup OS 15044 - Lisiane\\Backup\\D\\Meus Documentos\\FATEC\\Semestre 02\\pi\\Site Nice\\Site_Nice_Decora-es\\";

    private static ArrayList<Produto> lista = new ArrayList<Produto>();

    //adiciona um objeto da classe Usuario 
    //na lista que simula o banco de dados
    public static void inserir(Produto produto) {
        lerXml(); //Lê o XML e preenche a lista de usuario

        //pega o último usuário cadastrado
        int ultimaPosicao = lista.size() - 1;
        if (ultimaPosicao >= 0) {
            Produto ultimoProduto = lista.get(ultimaPosicao);
            produto.setCodigo(ultimoProduto.getCodigo() + 1);
        } else {
            //Se não tem ninguém na lista o código é um.
            produto.setCodigo(1);
        }

        lista.add(produto); // Adiciona um usuario no final da lista
        salvarXml(); //Salva a lista atualizada com a adição do novo usuario
    }

    public static void alterar(Produto produto) {
        lerXml();
        excluir(produto.getCodigo());
        inserir(produto);
        salvarXml();
    }

    //recebe o atributo que identifica cada objeto
    //da classe Usuario
    public static void excluir(int codigo) {
        lerXml();
        for (int i = 0; i < lista.size(); i++) {
            Produto cadaProduto = lista.get(i);

            //procura o usuario que tem o CPF igual 
            //Ã  variÃ¡vel "cpf", que tÃ¡ chegando entre
            //os parÃªnteses
            if (cadaProduto.getCodigo() == codigo) {
                lista.remove(i);
                /*.equals serve para comparar string */
            }
        }
        salvarXml();
    }

    public static ArrayList<Produto> listar() {
        lerXml();
        //retorna todos os objetos do banco de dados
        return lista;
    }

    public static Produto getBycodigo(String codigo) {
        lerXml();
        Produto produtoEncontrado = null;
        for (int i = 0; i < lista.size(); i++) {
            Produto cadaProduto = lista.get(i);
            if (cadaProduto.getNomeProduto().equals(codigo)) {
                produtoEncontrado = cadaProduto;
                return produtoEncontrado;
            }
        }
        return null;
    }

    private static void lerXml() {
        File arquivo = new File(caminho + "produtoes.xml");
        if (arquivo.exists()) {
            //armazenar XML no vetor
            XStream xstream = new XStream();
            xstream.alias("produto", Produto.class);
            lista = (ArrayList<Produto>) xstream.fromXML(arquivo);
        } else {
            lista = new ArrayList<Produto>();
        }
    }

    private static void salvarXml() {
        XStream xstream = new XStream();
        xstream.alias("produto", Produto.class);
        try {
            FileWriter escritor = new FileWriter(caminho + "produtoes.xml");
            escritor.write(xstream.toXML(lista));
            escritor.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
}
