
const parseCSV = require('./parse')

parseCSV('./simple_data/moving_jan_2016.csv', function handleParsedMovingData (data) {
  console.log(data[0])
})

parseCSV('./data/moving_jan_2016.csv', function handleParsedMovingData (data) {
  console.log('Number of moving violations')
  console.log(data.length - 1)
})
