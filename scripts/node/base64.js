const fs = require('fs');

const img = process.argv.slice(2).map((name) => {
  let img = fs.readFileSync(__dirname + `/../imgs/${name}.png`).toString('base64')

  return `data:image/png;base64,${img}`
})

console.log(img[0])