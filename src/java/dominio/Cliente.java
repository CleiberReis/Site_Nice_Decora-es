package dominio;

public class Cliente extends Pessoa {
    private String numeroTelefone;
    
    public void setNumeroTelefone(String novoNumeroTelefone){
        numeroTelefone = novoNumeroTelefone;
    }
  
    public String getNumeroTelefone(){
        return numeroTelefone;
    }
}
