package dominio;

public class Categoria {
    private String codigo;
    private String descricao;
    
    public void setCodigo(String novoCodigo){
        codigo = novoCodigo;
    }
    public void setDescricao(String novoDescricao){
        descricao = novoDescricao;
    }
  
    public String geCodigo(){
        return codigo;
    }
    public String getDescricao(){
        return descricao;
    }
}
