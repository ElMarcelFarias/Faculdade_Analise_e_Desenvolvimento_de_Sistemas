<?php

class DoubleNode {
    public int $data;
    public ?DoubleNode $next;
    public ?DoubleNode $prev;

    public function __construct(int $data) {
        $this->data = $data;
        $this->next = null;
        $this->prev = null;
    }
}

class DoublyLinkedList {
    private ?DoubleNode $head;
    private ?DoubleNode $tail;

    public function __construct() {
        $this->head = null;
        $this->tail = null;
    }

    public function insert(int $data): void {
        $newNode = new DoubleNode($data);
        if ($this->head === null) {
            $this->head = $this->tail = $newNode;
        } else {
            $this->tail->next = $newNode;
            $newNode->prev = $this->tail;
            $this->tail = $newNode;
        }
    }

    public function insertAtBeginning(int $data): void {
        $newNode = new DoubleNode($data);
        if ($this->head === null) {
            $this->head = $this->tail = $newNode;
        } else {
            $newNode->next = $this->head;
            $this->head->prev = $newNode;
            $this->head = $newNode;
        }
    }

    public function search(int $value): bool {
        $temp = $this->head;
        while ($temp !== null) {
            if ($temp->data === $value) {
                echo "Valor $value encontrado na lista.\n";
                return true;
            }
            $temp = $temp->next;
        }
        echo "Valor $value não encontrado.\n";
        return false;
    }

    public function removeByValue(int $value): void {
        $current = $this->head;

        while ($current !== null && $current->data !== $value) {
            $current = $current->next;
        }

        if ($current === null) {
            echo "Valor $value não encontrado para remoção.\n";
            return;
        }

        if ($current === $this->head) {
            $this->head = $current->next;
            if ($this->head !== null) {
                $this->head->prev = null;
            } else {
                $this->tail = null;
            }
        } elseif ($current === $this->tail) {
            $this->tail = $current->prev;
            if ($this->tail !== null) {
                $this->tail->next = null;
            }
        } else {
            if ($current->prev !== null) {
                $current->prev->next = $current->next;
            }
            if ($current->next !== null) {
                $current->next->prev = $current->prev;
            }
        }

        echo "Valor $value removido da lista.\n";
    }

    public function displayForward(): void {
        $temp = $this->head;
        while ($temp !== null) {
            echo $temp->data . " <-> ";
            $temp = $temp->next;
        }
        echo "NULL\n";
    }

    public function displayBackward(): void {
        $temp = $this->tail;
        while ($temp !== null) {
            echo $temp->data . " <-> ";
            $temp = $temp->prev;
        }
        echo "NULL\n";
    }
}

$dList = new DoublyLinkedList();
$dList->insert(5);
$dList->insert(15);
$dList->insert(25);

echo "Lista original:\n";
$dList->displayForward();

echo "\nInserindo no início o valor 1:\n";
$dList->insertAtBeginning(1);
$dList->displayForward();

echo "\nBuscando o valor 15:\n";
$dList->search(15);

echo "\nRemovendo o valor 15:\n";
$dList->removeByValue(15);
$dList->displayForward();

echo "\nLista reversa:\n";
$dList->displayBackward();
?>
