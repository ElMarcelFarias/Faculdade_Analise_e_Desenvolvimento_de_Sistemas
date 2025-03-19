<?php

class Fila {
    private $itens;
    private $tamanhoMaximo;

    public function __construct($tamanhoMaximo = 10) {
        $this->itens = [];
        $this->tamanhoMaximo = $tamanhoMaximo;
    }

    public function enqueue($item) {
        if ($this->isFull()) {
            echo "Erro: A fila está cheia!\n";
            return;
        }
        array_push($this->itens, $item);
    }

    public function dequeue() {
        if ($this->isEmpty()) {
            echo "Erro: A fila está vazia!\n";
            return null;
        }
        return array_shift($this->itens);
    }

    public function isEmpty() {
        return empty($this->itens);
    }

    public function isFull() {
        return count($this->itens) >= $this->tamanhoMaximo;
    }

    public function mostrarFila() {
        echo "Fila: " . implode(", ", $this->itens) . "\n";
    }
}

class FilaCircular {
    private $itens;
    private $tamanhoMaximo;
    private $frente;
    private $tras;
    private $contador;

    public function __construct($tamanhoMaximo = 5) {
        $this->tamanhoMaximo = $tamanhoMaximo;
        $this->itens = array_fill(0, $tamanhoMaximo, null);
        $this->frente = 0;
        $this->tras = -1;
        $this->contador = 0;
    }

    public function enqueue($item) {
        if ($this->isFull()) {
            echo "Erro: A fila circular está cheia!\n";
            return;
        }
        $this->tras = ($this->tras + 1) % $this->tamanhoMaximo;
        $this->itens[$this->tras] = $item;
        $this->contador++;
    }

    public function dequeue() {
        if ($this->isEmpty()) {
            echo "Erro: A fila circular está vazia!\n";
            return null;
        }
        $item = $this->itens[$this->frente];
        $this->itens[$this->frente] = null;
        $this->frente = ($this->frente + 1) % $this->tamanhoMaximo;
        $this->contador--;
        return $item;
    }

    public function isEmpty() {
        return $this->contador === 0;
    }

    public function isFull() {
        return $this->contador === $this->tamanhoMaximo;
    }

    public function mostrarFila() {
        echo "Fila Circular: ";
        for ($i = 0; $i < $this->tamanhoMaximo; $i++) {
            echo $this->itens[$i] !== null ? $this->itens[$i] . " " : "_ ";
        }
        echo "\n";
    }
}

function simularAtendimentoBanco() {
    $fila = new Fila(5);

    echo "Clientes entrando na fila do banco...\n";
    $fila->enqueue("Cliente 1");
    $fila->enqueue("Cliente 2");
    $fila->enqueue("Cliente 3");
    $fila->mostrarFila();

    echo "Atendendo um cliente...\n";
    echo "Atendido: " . $fila->dequeue() . "\n";
    $fila->mostrarFila();

    echo "Cliente 4 entrou na fila...\n";
    $fila->enqueue("Cliente 4");
    $fila->mostrarFila();

    echo "Atendendo mais clientes...\n";
    echo "Atendido: " . $fila->dequeue() . "\n";
    echo "Atendido: " . $fila->dequeue() . "\n";
    $fila->mostrarFila();
}

echo "### Teste da Fila Simples ###\n";
$fila = new Fila(3);
$fila->enqueue("A");
$fila->enqueue("B");
$fila->enqueue("C");
$fila->mostrarFila();
echo "Removido: " . $fila->dequeue() . "\n";
$fila->mostrarFila();

echo "\n### Teste da Fila Circular ###\n";
$filaCircular = new FilaCircular(5);
$filaCircular->enqueue(1);
$filaCircular->enqueue(2);
$filaCircular->enqueue(3);
$filaCircular->enqueue(4);
$filaCircular->enqueue(5);
$filaCircular->mostrarFila();
echo "Removido: " . $filaCircular->dequeue() . "\n";
$filaCircular->mostrarFila();
$filaCircular->enqueue(6);
$filaCircular->mostrarFila();

echo "\n### Simulação do Atendimento Bancário ###\n";
simularAtendimentoBanco();
?>
