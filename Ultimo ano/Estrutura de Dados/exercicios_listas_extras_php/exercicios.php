<?php 

class Node {
    public $data;
    public $next;

    public function __construct($data)
    {
        $this->data = $data;
        $this->next = null;
    }
}

class LinkedList {
    private $head; 

    public function __construct()
    {
        $this->head = null;
    }

    public function insert($data) {
        $newNode = new Node($data);

        if ($this->head == null) {
            $this->head = $newNode;
        } else {
            $temp = $this->head;
            while ($temp->next !== null) {
                $temp = $temp->next;
            }
            $temp->next = $newNode;
        } 
    }

    public function search($data) {
        $temp = $this->head;
        while ($temp !== null) {
            if ($temp->data == $data) {
                return true; 
            }
            $temp = $temp->next;
        }
        return false; 
    }

    public function remove($data) {
        if ($this->head == null) {
            return;
        }
    
        if ($this->head->data == $data) {
            $this->head = $this->head->next;
            return;
        }
    
        $temp = $this->head;
        while ($temp->next !== null) {
            if ($temp->next->data == $data) {
                $temp->next = $temp->next->next;
                return;
            }
            $temp = $temp->next;
        }
    }

    public function count() {
        $count = 0;
        $temp = $this->head;
        while ($temp !== null) {
            $count++;
            $temp = $temp->next;
        }
        return $count;
    }

    public function display() {
        $temp = $this->head;
        while($temp !== null) {
            echo $temp->data . " -> ";
            $temp = $temp->next;
        }
        echo "NULL \n";
    }
} 

$list = new LinkedList();
$list->insert(10);
$list->insert(20);
$list->insert(30);
$list->display();