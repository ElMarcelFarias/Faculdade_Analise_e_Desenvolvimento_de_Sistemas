const numeros: number[] = [5, 7, 10, 12, 15];
const somaTotal = numeros.reduce((soma, num) => soma + num, 0);

console.log(`Soma total: ${somaTotal}`); 
