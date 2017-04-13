module.exports = function log(req, res, next) {
  console.log('new_request', req.url, req.body);
  next();
}