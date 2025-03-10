<?php 

/**
 * 
 * Vetores:
 *   ○ Crie um vetor que armazene 10 números inteiros e desenvolva uma função
 *   para buscar um número específico no vetor.
 *   ○ Implemente uma função para remover um elemento do vetor em uma
 *   posição específica.
 * 
 */

$numbers = array();

function insertNumbersIntoArray(Array $num) {
    for($i = 0; $i <= 9; $i++) {
        array_push($num, $i + 1);
    }

    return $num;
};

$numbers = insertNumbersIntoArray($numbers);

function removeNumberFromArray(Array $num, int $index) {
    unset($num[$index]);

    return $num;
}

$newNumbers = $numbers;
$newNumbers = removeNumberFromArray($newNumbers, 2);

function getValueFromArray(Array $num, int $index) {
    return $num[$index];
}

$selectedValue = getValueFromArray($numbers, 2);


// print_r($numbers); //Array com todos os valores
// print_r($newNumbers); //Array excluindo um valor
// print_r($selectedValue); //Valor selecionado


 




