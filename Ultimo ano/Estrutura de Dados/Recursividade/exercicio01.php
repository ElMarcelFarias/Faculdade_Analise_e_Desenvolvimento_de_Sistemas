<?php
function fatorial($n) {
    
    if ($n === 0 || $n === 1) {
        return 1;
    }

    return $n * fatorial($n - 1);
}

$numero = 5;
echo "Fatorial de $numero é: " . fatorial($numero);
?>
