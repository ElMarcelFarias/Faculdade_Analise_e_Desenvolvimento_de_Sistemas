let musicas = ["mega dos maniacos", "Bohemian Rhapsody", "haven"];
let copiaMusicas = [...musicas];

copiaMusicas[0] = "Hotel California";

console.log("Array original:", musicas);

console.log("Array copiado:", copiaMusicas);
