const express = require('express')
const bodyParser = require('body-parser')
const app = express()

app.use('/foods', require('./food.routes'))
app.use(bodyParser.json())
app.use(require('./log.middleware'))
app.get('/', function showRoot (req, res, next) {
  res.body = 'hello world'

  res.json({
    routes: app.routes
  })
})

app.listen(3000)
