let infoBasica = {
    titulo: "Inception",
    diretor: "Christopher Nolan"
};

let infoComplementar = {
    ano: 2010,
    genero: "Ficção Científica"
};

let filme = {
    ...infoBasica,
    ...infoComplementar
};

console.log(filme);
