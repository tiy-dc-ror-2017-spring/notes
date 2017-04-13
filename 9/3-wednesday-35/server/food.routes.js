const express = require('express')
const router = express.Router()
const allFoods = ['carrots']

router.get('/', function showAllFoods (req, res, next) {

  res.json(allFoods)
})

router.post('/', function createFood (req, res, next) {
  allFoods.push(req.params.food)
})

module.exports = router
