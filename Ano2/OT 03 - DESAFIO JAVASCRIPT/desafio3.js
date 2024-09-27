
let person = {};

person = {
    nome: "Marcel",
    sobrenome: "Leite de Farias",
    sexo: "Masculino",
    idade: 20,
    altura: 1.74,
    peso: 60,
    andando: false,
    metrosAndados: 0,
    
    fazerAniversario: function() {
        this.idade += 1;
    },
    
    andar: function(metros) {
        this.metrosAndados += metros;
        this.andando = true;
    },
    
    
    
    parar: function() {
        this.andando = false;
    },
    
    nome: function() {
        return `Olá, Meu nome é ${this.nome} ${this.sobrenome}`;
    },
    
    idade: function() {
        return `Olá, eu tenho ${this.idade} anos`;
    },
    
    peso: function() {
        return `Eu peso ${this.peso}Kg.`;
    },
    
    altura: function() {
        return `Minha altura é ${this.altura}m.`;
    },
    
    apresentacao: function() {
        let artigo = this.sexo === "Feminino" ? "a" : "o";
        let anoOuAnos = this.idade === 1 ? "ano" : "anos";
        let metroOuMetros = this.metrosAndados === 1 ? "metro" : "metros";

        return `Olá, eu sou ${artigo} ${this.nome().slice(12)}, tenho ${this.idade} ${anoOuAnos}, ${this.altura}m, meu peso é ${this.peso}Kg e, só hoje, eu já caminhei ${this.metrosAndados} ${metroOuMetros}!`;
    }
};

console.log(person.nome()); 
console.log(person.idade()); 
console.log(person.peso()); 
console.log(person.altura()); 


person.fazerAniversario();

console.log(person.idade); 

person.andar(50);
person.andar(30);

console.log(person.andando);
person.parar();


console.log(person.andando); 
console.log(person.metrosAndados);
console.log(person.apresentacao()); 
