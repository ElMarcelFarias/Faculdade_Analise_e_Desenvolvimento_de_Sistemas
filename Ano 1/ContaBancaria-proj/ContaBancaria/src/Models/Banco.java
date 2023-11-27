package Models;

import java.util.ArrayList;

public class Banco {

    private final ArrayList<Conta> contas = new ArrayList<>();
    private final ArrayList<String> nomes = new ArrayList<>();

    public ArrayList<String> getNomes() {
        return nomes;
    }

    public void setNomes(String nomes) {
        this.nomes.add(nomes);
    }

    public ArrayList<Conta> getContas() {
        return contas;
    }

    public void setContas(Conta conta) {
        this.contas.add(conta);
    }
}