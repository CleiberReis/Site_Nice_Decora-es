package dominio;

public class Imagem {
    private String largura;
    private String altura;
    private String extensao;
    
    public void setLargura(String novoLargura){
        largura = novoLargura;
    }
    public void setAltura(String novoAltura){
        altura = novoAltura;
    }
     public void setExtensao(String novoExtensao){
        extensao = novoExtensao;
    }
  
    public String getLargura(){
        return largura;
    }
    public String getAltura(){
        return altura;
    }
    public String getExtensao(){
        return extensao;
    }
}
