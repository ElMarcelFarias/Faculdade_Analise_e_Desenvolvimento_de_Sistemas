function somaArray(numeros: number[]): number {
    return numeros.reduce((total, numero) => total + numero, 0);
}

const numeros = [10, 20, 30];
console.log(`Soma: ${somaArray(numeros)}`); // Soma: 60
