enum DiasDaSemana {
    Domingo,
    Segunda,
    Terca,
    Quarta,
    Quinta,
    Sexta,
    Sabado
}

function mensagemDia(dia: DiasDaSemana): void {
    switch (dia) {
        case DiasDaSemana.Segunda:
            console.log("Hoje é segunda-feira, início da semana!");
            break;
        case DiasDaSemana.Sexta:
            console.log("Hoje é sexta-feira, quase fim de semana!");
            break;
        default:
            console.log(`Hoje é ${DiasDaSemana[dia]}.`);
    }
}

mensagemDia(DiasDaSemana.Sexta); // Hoje é sexta-feira, quase fim de semana!
