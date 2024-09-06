const fs = require('fs');

const modules = process.argv.slice(2).map((name) => {
  let wat = fs.readFileSync(__dirname + `/${name}.wat`).toString()

  return {
    name, 
    code: { Wat: wat }
  }
})

let program = { modules }

console.log(JSON.stringify(JSON.stringify(program)))