var clc = require("cli-color");

// console.log(clc.red("Text in Red"));
// console.log(clc.bgWhite.underline("Underlined red text on white background"));
// console.log(clc.red("red") + " plain " + clc.blue("blue"));
// console.log(clc.red("red" + clc.blue("blue") + "red"));


var error = clc.red.bold;
var warn = clc.yellow;
var notice = clc.blue;

var msg = clc.xterm(202).bgXterm(236);
console.log(msg("Orange text on dark gray background"));

console.log(clc.green("Mensagem verde"));
console.log(clc.red("Mensagem red"));
console.log(clc.blue("Mensagem blue"));
console.log(clc.yellow("Mensagem yellow"));
console.log(clc.red("red" + clc.blue("blue") + "red"));
console.log(clc.red("red") + " plain " + clc.blue("blue"));
console.log(clc.bgWhite.underline("Underlined red text on white background"));
console.log(clc.red("Text in Red"));

console.log(error("Error!"));
console.log(warn("Warning!"));
console.log(notice("Notice!"));

process.stdout.write(
    clc.columns([
        [clc.bold("First name"), clc.bold("Last name"), clc.bold("Age")],
        ["John", "Doe", 34],
        ["Martha", "smith", 20],
        ["Jan", "Kowalski", 30]
    ])
)
