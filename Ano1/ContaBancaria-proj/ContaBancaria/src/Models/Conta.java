package Models;

import java.util.ArrayList;

public class Conta {
    private final ArrayList<String> movimentacoesDeposito = new ArrayList<>();
    private final ArrayList<String> movimentacoesSaques = new ArrayList<>(); 
    private final ArrayList<String> movimentacoesTotais = new ArrayList<>();
    private String nomeConta;
    private int tipo;
    private double saldo;
    private String cpf;

    public ArrayList<String> getMovimentacoesSaques() {
        return movimentacoesSaques;
    }

    public void setMovimentacoesSaques(String movimentacoesSaques) {
        this.movimentacoesSaques.add(movimentacoesSaques);
    }

    public ArrayList<String> getMovimentacoesTotais() {
        return movimentacoesTotais;
    }

    public void setMovimentacoesTotais(String movimentacoes) {
        this.movimentacoesTotais.add(movimentacoes);
    }

    public ArrayList<String> getMovimentacoesDeposito() {
        return movimentacoesDeposito;
    }

    public void setMovimentacoesDeposito(String movimentacao) {
        this.movimentacoesDeposito.add(movimentacao);
    }

   
    public String getCPF() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getNomeConta() {
        return nomeConta;
    }

    public void setNomeConta(String nomeConta) {
        this.nomeConta = nomeConta;
    }

    public int getTipo(){
        return tipo;
    }

    public void setTipo(int tipoConta) {
        this.tipo = tipoConta;
    }

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = this.saldo + saldo;
    }
}