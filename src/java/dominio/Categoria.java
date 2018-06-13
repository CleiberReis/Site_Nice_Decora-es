package dominio;

public class Categoria {
    private int codigo;
    private String descricao;
    
    public void setCodigo(int novoCodigo){
        codigo = novoCodigo;
    }
    public void setDescricao(String novoDescricao){
        descricao = novoDescricao;
    }
  
    public int geCodigo(){
        return codigo;
    }
    public String getDescricao(){
        return descricao;
    }
}
