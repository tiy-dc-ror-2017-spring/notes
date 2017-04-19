const express = require('express')
const router = express.Router()
const Food = require('./models/Food')

router.get('/', function showAllFoods (req, res, next) {
  Food.find()
    .then(foods => res.json(foods))
    .catch(e => res.json(e))
})

router.post('/', function createFood (req, res, next) {
  console.log('req.body', req.body);

  let food = new Food({name: req.body.food, posion: true})
  food.save()
    .then(food => res.json(food))
    .catch(e => res.json(e))

})

module.exports = router
