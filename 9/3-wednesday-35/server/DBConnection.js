require('dotenv').config()

const mongoose = require('mongoose')
if (!process.env.MONGODB_URL) {
  console.log('NO DB')
  process.exit(1)
}

mongoose.connect(process.env.MONGODB_URL)
