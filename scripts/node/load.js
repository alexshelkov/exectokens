const fs = require('fs');

const program = process.argv.slice(2).map((name) => {
  let wat = fs.readFileSync(__dirname + `/../programs/${name}.wat`).toString()

  return [name, wat]
})

// console.log(JSON.stringify(`variant { Wat=record { ${JSON.stringify(program[0][0])}, ${JSON.stringify(program[0][1])} }}`))

console.log(`variant {Wat=record {${JSON.stringify(program[0][0])}; ${JSON.stringify(program[0][1])}}}`)