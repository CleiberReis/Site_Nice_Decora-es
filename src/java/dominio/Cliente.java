package dominio;

public class Cliente extends Pessoa {
    private String telefone;
    private String mensagem;
    
    public void setTelefone(String novoTelefone){
        telefone = novoTelefone;
    }
    public void setMensagem(String novoMensagem){
        mensagem = novoMensagem;
    }
  
    public String geTelefone(){
        return telefone;
    }
    public String getMensagem(){
        return mensagem;
    }
}
