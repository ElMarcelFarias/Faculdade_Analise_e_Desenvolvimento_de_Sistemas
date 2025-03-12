<?php

class Node {
    public $data;
    public ?Node $next;
    public ?Node $prev;

    public function __construct($data) {
        $this->data = $data;
        $this->next = null;
        $this->prev = null;
    }
}

class DoublyLinkedList {
    private ?Node $head;
    private ?Node $tail;

    public function __construct() {
        $this->head = null;
        $this->tail = null;
    }

    // Inserir no início
    public function insertAtBeginning($value) {
        $newNode = new Node($value);

        if ($this->head === null) {
            $this->head = $this->tail = $newNode;
        } else {
            $newNode->next = $this->head;
            $this->head->prev = $newNode;
            $this->head = $newNode;
        }
    }

    // Remover do final
    public function removeFromEnd() {
        if ($this->tail === null) {
            echo "A lista está vazia.\n";
            return;
        }

        if ($this->head === $this->tail) {
            $this->head = $this->tail = null;
        } else {
            $this->tail = $this->tail->prev;
            $this->tail->next = null;
        }
    }

    // Percorrer a lista
    public function traverseForward() {
        $current = $this->head;
        while ($current !== null) {
            echo $current->data . " -> ";
            $current = $current->next;
        }
        echo "NULL\n";
    }

    // Percorrer a lista reversa
    public function traverseBackward() {
        $current = $this->tail;
        while ($current !== null) {
            echo $current->data . " -> ";
            $current = $current->prev;
        }
        echo "NULL\n";
    }
}

$list = new DoublyLinkedList();
$list->insertAtBeginning(10);
$list->insertAtBeginning(20);
$list->insertAtBeginning(30);

echo "Percorrendo para frente:\n";
$list->traverseForward();

echo "Percorrendo para trás:\n";
$list->traverseBackward();

$list->removeFromEnd();

echo "Após remover do final:\n";
$list->traverseForward();
?>
