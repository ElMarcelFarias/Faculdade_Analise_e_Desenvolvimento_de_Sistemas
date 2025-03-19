<?php

class Pilha {
    private $itens;
    private $tamanhoMaximo;

    public function __construct($tamanhoMaximo = 100) {
        $this->itens = [];
        $this->tamanhoMaximo = $tamanhoMaximo;
    }

    public function push($item) {
        if ($this->isFull()) {
            echo "Erro: A pilha está cheia!\n";
            return;
        }
        array_push($this->itens, $item);
    }

    public function pop() {
        if ($this->isEmpty()) {
            echo "Erro: A pilha está vazia!\n";
            return null;
        }
        return array_pop($this->itens);
    }

    public function isEmpty() {
        return empty($this->itens);
    }

    public function isFull() {
        return count($this->itens) >= $this->tamanhoMaximo;
    }
}

function verificarParenteses($expressao) {
    $pilha = new Pilha();
    
    for ($i = 0; $i < strlen($expressao); $i++) {
        $caractere = $expressao[$i];

        if ($caractere === '(') {
            $pilha->push($caractere);
        } elseif ($caractere === ')') {
            if ($pilha->isEmpty()) {
                return false; 
            }
            $pilha->pop();
        }
    }

    return $pilha->isEmpty(); 
}

$expressao1 = "((1+2) * (3/4))"; 
$expressao2 = "((1+2) * (3/4)";  
$expressao3 = "((1+2)) * (3/4))"; 

echo verificarParenteses($expressao1) ? "Balanceado\n" : "Não Balanceado\n";
echo verificarParenteses($expressao2) ? "Balanceado\n" : "Não Balanceado\n";
echo verificarParenteses($expressao3) ? "Balanceado\n" : "Não Balanceado\n";

?>
