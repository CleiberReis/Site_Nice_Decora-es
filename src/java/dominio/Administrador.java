package dominio;

public class Administrador extends Pessoa{
    private String login;
    private String senha;
    
    public void setLogin(String novoLogin){
        login = novoLogin;
    }
    public void setSenha(String novoSenha){
        senha = novoSenha;
    }
    
    public String getLogin(){
        return login;
    }
    public String getSenha(){
        return senha;
    }
}
