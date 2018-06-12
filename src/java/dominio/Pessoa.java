package dominio;

public class Pessoa {
    private String nome;
    private String email;
    
    public void setNome(String novoNome){
        nome = novoNome;
    }
    public void setEmail(String novoEmail){
        email = novoEmail;
    }
    
    public String getNome(){
        return nome;
    }
    public String getEmail(){
        return email;
    }
}
