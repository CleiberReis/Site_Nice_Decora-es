package dominio;

public class Cliente extends Pessoa {

    private String telefone;
    private String mensagem;
    private int codigo;

    public void setTelefone(String novoTelefone) {
        telefone = novoTelefone;
    }

    public void setMensagem(String novoMensagem) {
        mensagem = novoMensagem;
    }

    public void setCodigo(int novoCodigo) {
        codigo = novoCodigo;
    }

    public int getCodigo() {
        return codigo;
    }

    public String getTelefone() {
        return telefone;
    }

    public String getMensagem() {
        return mensagem;
    }
}
