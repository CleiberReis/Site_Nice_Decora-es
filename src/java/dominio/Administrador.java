package dominio;

public class Administrador extends Pessoa{
    private int codigo;
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

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }
    
}
