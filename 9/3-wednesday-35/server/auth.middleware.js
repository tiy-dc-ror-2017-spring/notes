module.exports = function auth (req, res, next){
  console.log('headers', req.headers);
  
  next()
}
