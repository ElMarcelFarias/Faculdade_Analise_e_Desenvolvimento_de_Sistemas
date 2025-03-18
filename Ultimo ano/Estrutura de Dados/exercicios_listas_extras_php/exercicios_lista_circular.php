<?php 

class CircularNode {
    public $data;
    public ?CircularNode $next; 

    public function __construct($data) {
        $this->data = $data; 
        $this->next = null;
    }
}

class CircularLinkedList {
    private ?CircularNode $head;

    public function __construct() {
        $this->head = null;
    }

    public function insert($data): void {
        $newNode = new CircularNode($data);

        if ($this->head === null) {
            $this->head = $newNode;
            $newNode->next = $this->head;
        } else {
            $temp = $this->head; 
            while ($temp->next !== $this->head) {
                $temp = $temp->next;
            }
            $temp->next = $newNode;
            $newNode->next = $this->head;
        }
    }

    public function display(): void {
        if ($this->head === null) {
            echo "Lista vazia.\n";
            return;
        } 
        $temp = $this->head;
        do {
            echo $temp->data . " -> ";
            $temp = $temp->next;
        } while ($temp !== $this->head);

        echo "(CIRCULAR)\n";
    }

    public function countElements(): int {
        if ($this->head === null) return 0;

        $count = 0;
        $temp = $this->head;
        do {
            $count++;
            $temp = $temp->next;
        } while ($temp !== $this->head);

        return $count;
    }

    public function isEmpty(): bool {
        return $this->head === null;
    }

    public function remove($value): void {
        if ($this->head === null) {
            echo "Lista vazia. Nada para remover.\n";
            return;
        }

        $current = $this->head;
        $prev = null;

        if ($current->data === $value) {
            if ($current->next === $this->head) {
                $this->head = null;
                echo "Valor $value removido. Lista agora está vazia.\n";
                return;
            } else {
                while ($current->next !== $this->head) {
                    $current = $current->next;
                }
                $current->next = $this->head->next;
                $this->head = $this->head->next;
                echo "Valor $value removido.\n";
                return;
            }
        }

        $prev = $this->head;
        $current = $this->head->next;
        while ($current !== $this->head) {
            if ($current->data === $value) {
                $prev->next = $current->next;
                echo "Valor $value removido.\n";
                return;
            }
            $prev = $current;
            $current = $current->next;
        }

        echo "Valor $value não encontrado.\n";
    }
}

$cList = new CircularLinkedList();
$cList->insert(100);
$cList->insert(200);
$cList->insert(300);
$cList->insert(400);

$cList->display();

echo "Quantidade de elementos: " . $cList->countElements() . "\n";
echo "A lista está vazia? " . ($cList->isEmpty() ? "Sim" : "Não") . "\n";

$cList->remove(300);
$cList->display();

$cList->remove(100); 
$cList->display();

$cList->remove(999);
