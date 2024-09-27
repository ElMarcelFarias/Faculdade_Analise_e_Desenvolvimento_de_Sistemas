
function soma(a, b) {
    return a + b;
}

let resultado = soma(3, 4) + 5;

console.log(resultado); 

let Number;

function atualizarNumber(valor) {
    Number = valor;
    return `O valor da variável agora é ${Number}.`;
}

console.log(atualizarNumber(10));


function multiplicar(a, b, c) {
    if (a === undefined || b === undefined || c === undefined) {
        return "Preencha todos os valores corretamente!";
    }
    return (a * b * c) + 2;
}

console.log(multiplicar(2, 3));

console.log(multiplicar(2, 3, 4)); 


function numbers(a, b, c) {
    if (arguments.length === 0) {
        return false;
    } else if (arguments.length === 1) {
        return a;
    } else if (arguments.length === 2) {
        return a + b;
    } else if (arguments.length === 3) {
        return (a + b) / c;
    } else {
        return null;
    }
}

console.log(variaveis()); 
console.log(variaveis(3)); 
console.log(variaveis(6, 8)); 
console.log(variaveis(2, 5, 10)); 
