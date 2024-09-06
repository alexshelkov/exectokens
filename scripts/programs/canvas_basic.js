const fs = require('fs');

let main = fs.readFileSync(__dirname + '/program_basic_main_bg.wat').toString()
let client = fs.readFileSync(__dirname + '/program_basic_canvas_bg.wat').toString()

let program = {modules: [{name: "Server", code: {Wat: main}}, {name: "Client", code: {Wat: client}}]}

console.log(JSON.stringify(JSON.stringify(program)))