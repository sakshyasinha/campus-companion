// 404 Not Found middleware
const notFound = (req, res, next) => {
  const error = new Error(`Not found - ${req.originalUrl}`)
  error.statusCode = 404
  next(error)
}

module.exports = notFound