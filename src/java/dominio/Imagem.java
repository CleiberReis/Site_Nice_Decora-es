package dominio;

public class Imagem {
    private double largura;
    private double altura;
    private double extensao;
    
    public void setLargura(double novoLargura){
        largura = novoLargura;
    }
    public void setAltura(double novoAltura){
        altura = novoAltura;
    }
     public void setExtensao(double novoExtensao){
        extensao = novoExtensao;
    }
  
    public double getLargura(){
        return largura;
    }
    public double getAltura(){
        return altura;
    }
    public double getExtensao(){
        return extensao;
    }
}
