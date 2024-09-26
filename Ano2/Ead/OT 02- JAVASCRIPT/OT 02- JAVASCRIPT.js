let animais = [];
animais.push("girafa");
animais.push("elefante");
animais.push("iguana");
console.log(animais); 

animais.shift();
console.log(animais); 

animais.unshift("elefante");
animais.unshift("leão");
console.log(animais); 

animais[1] = "girafa";
console.log(animais); 

let frutas = [];
frutas.push("banana");
frutas.push("pera");
frutas.push("maça");
console.log(frutas.length); 

for (let i = 0; i < frutas.length; i++) {
    console.log(frutas[i]);
}

