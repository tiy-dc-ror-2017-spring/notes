const fs = require('fs')
function parseCSV (path, callback) {
  fs.readFile(path, function handlFileRead (err, data) {
    if (err) {
      return console.log(err)
    }

    const unParsedData = data.toString()
    const rows = unParsedData.split('\n')

    const parsedData = rows.map(function splitIntoColumns (rowStr) {
      return rowStr.split(',')
    })

    callback(parsedData)
  })

  console.log('Is the file done reading?')
}

module.exports = parseCSV
