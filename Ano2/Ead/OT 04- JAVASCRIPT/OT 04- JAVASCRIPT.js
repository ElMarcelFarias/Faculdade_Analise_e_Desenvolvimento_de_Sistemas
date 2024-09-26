let idade = 31;

if (idade < 13) {
    console.log("Criança");
} else if (idade >= 13 && idade <= 17) {
    console.log("Adolescente");
} else if (idade >= 18 && idade <= 64) {
    console.log("Adulto");
} else {
    console.log("Idoso");
}


let numeroEscolhido = 3; 
let numeroCorreto = 4;   

switch (numeroEscolhido) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
        if (numeroEscolhido === numeroCorreto) {
            console.log("Parabéns! Você acertou o número.");
        } else {
            console.log("Tente novamente! O número correto era " + numeroCorreto);
        }
        break;
    default:
        console.log("Número inválido. Escolha um número entre 1 e 5.");
}

let nota = 9.5;

switch (true) {
    case (nota < 6):
        console.log("Reprovado");
        break;
    case (nota >= 6 && nota <= 7):
        console.log("Recuperação");
        break;
    case (nota > 7):
        console.log("Aprovado");
        break;
    default:
        console.log("Nota inválida");
}
