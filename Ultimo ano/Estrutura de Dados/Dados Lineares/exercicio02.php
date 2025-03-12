<?php

/**
 * 
 * Lista Simplesmente Encadeada:
 * ○ Implemente uma lista simplesmente encadeada com as seguintes operações:
 * inserir no início, inserir no final e remover de uma posição específica.
 * ○ Modifique o código anterior para permitir a busca de um elemento por valor.
 * 
 */


class Node {
    public $data;
    public $next;

    public function __construct($data) {
        $this->data = $data;
        $this->next = null;
    }
}

class LinkedList {
    private ?Node $head;

    public function __construct() {
        $this->head = null;
    }

    function insertAtBeginning($value) {
        $newNode = new Node($value);
        $newNode->next = $this->head;
        $this->head = $newNode;
    }

    function insertAtEnd($value) {
        $newNode = new Node($value);

        if ($this->head === null) {
            $this->head = $newNode;
            return;
        }

        $temp = $this->head;
        while ($temp->next !== null) {
            $temp = $temp->next;
        }
        $temp->next = $newNode;
    }

    function removeData($index) {
        if ($this->head === null || $index < 0) {
            echo "Lista está vazia ou índice inválido.\n";
            return;
        }

        if ($index === 0) {
            $this->head = $this->head->next;
            return;
        }

        $current = $this->head;
        $prev = null;
        $count = 0;

        while ($current !== null && $count < $index) {
            $prev = $current;
            $current = $current->next;
            $count++;
        }

        if ($current === null) {
            echo "Índice fora do alcance.\n";
            return;
        }

        $prev->next = $current->next;
    }

    function display() {
        $current = $this->head;
        while ($current !== null) {
            echo $current->data . " -> ";
            $current = $current->next;
        }
        echo "NULL\n";
    }
}

// Teste
$list = new LinkedList();
$list->insertAtEnd(10);
$list->insertAtEnd(20);
$list->insertAtEnd(30);
$list->insertAtEnd(40);

echo "Lista original:\n";
$list->display();

$list->removeData(2);

echo "Após remover a posição 2:\n";
$list->display();
?>
