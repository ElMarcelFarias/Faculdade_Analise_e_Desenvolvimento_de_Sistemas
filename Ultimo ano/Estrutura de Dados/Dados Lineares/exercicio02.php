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

    function insertAtBegging($value) {
        $newNode = new Node($value);

        $newNode->next = $this->head;
        $this->head = $newNode;
    }

 } 