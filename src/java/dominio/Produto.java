package dominio;

public class Produto extends Categoria {

    private String nomeProduto;
    private double preco;
    private String cor;
    private String material;
    private double tamanho;

    public void setNome(String novoNome) {
        this.nomeProduto = novoNome;
    }

    public void setPreco(double novoPreco) {
        this.preco = novoPreco;
    }

    public void setCor(String novoCor) {
        this.cor = novoCor;
    }

    public void setMaterial(String novoMaterial) {
        this.material = novoMaterial;
    }

    public void setTamanho(double novoTamanho) {
        this.tamanho = novoTamanho;
    }

    public String getNome() {
        return nomeProduto;
    }

    public double getPreco() {
        return preco;
    }

    public String getCor() {
        return cor;
    }

    public String getMaterial() {
        return material;
    }

    public double getTamanho() {
        return tamanho;
    }
}
