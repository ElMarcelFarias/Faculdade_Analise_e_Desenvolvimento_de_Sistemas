// Função que não retorna nada (void)
function logMensagem(mensagem: string): void {
    console.log(mensagem);
}

logMensagem("Essa função não retorna nada."); // Essa função não retorna nada.

// Função que retorna undefined
function retornarNada(): undefined {
    console.log("Retornando undefined.");
    return undefined;
}

console.log(retornarNada()); // Retornando undefined. \n undefined
