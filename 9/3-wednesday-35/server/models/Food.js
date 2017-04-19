const mongoose = require('mongoose')
mongoose.Promise = global.Promise;
let foodSchema = mongoose.Schema({
  name: String,
  calories: Number,
  posion: Boolean,
  creator: {
    name: String,
    employeeID: Number
  },
  createdAt: Date,
  updatedAt: Date
})

module.exports = mongoose.model('Food', foodSchema)
