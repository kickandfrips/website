var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index', {});
});
router.get('/produit', function (req, res, next) {
  res.render('produit', {});
});
router.get('/reseaux', function (req, res, next) {
  res.render('reseaux', {});
});
module.exports = router;