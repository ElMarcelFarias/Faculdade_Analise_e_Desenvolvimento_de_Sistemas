function listaDeConvidados(...nomes) {
    console.log("Lista de Convidados:");
    nomes.forEach((nome, index) => {
        console.log(`${index + 1}. ${nome}`);
    });
}

listaDeConvidados("Marcel", "Filipi", "Yuri", "Mateus");
