package dominio;

public class Produto extends Categoria{
    private String nome;
    private double preco;
    private String cor;
    private String material;
    private double tamanho;
    
    public void setNome(String novoNome){
        nome = novoNome;
    }
    public void setPreco(double novoPreco){
        preco = novoPreco;
    }
     public void setCor(String novoCor){
        cor = novoCor;
    }
    public void setMaterial(String novoMaterial){
        material = novoMaterial;
    }
     public void setTamanho(double novoTamanho){
        tamanho = novoTamanho;
    }
   
  
    public String getNome(){
        return nome;
    }
    public double getPreco(){
        return preco;
    }
    public String getCor(){
        return cor;
    }
    public String getMaterial(){
        return material;
    }
    public double getTamanho(){
        return tamanho;
    }
}
