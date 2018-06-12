package dominio;

public class Produto extends Categoria{
    private String nome;
    private String preco;
    private String cor;
    private String material;
    private String tamanho;
    
    public void setNome(String novoNome){
        nome = novoNome;
    }
    public void setPreco(String novoPreco){
        preco = novoPreco;
    }
     public void setCor(String novoCor){
        cor = novoCor;
    }
    public void setMaterial(String novoMaterial){
        material = novoMaterial;
    }
     public void setTamanho(String novoTamanho){
        tamanho = novoTamanho;
    }
   
  
    public String getNome(){
        return nome;
    }
    public String getPreco(){
        return preco;
    }
    public String getCor(){
        return cor;
    }
    public String getMaterial(){
        return material;
    }
    public String getTamanho(){
        return tamanho;
    }
}
