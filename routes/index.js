var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index', {});
});
router.get('/produit.html', function (req, res, next) {
  res.render('produit', {});
});
router.get('/reseaux.html', function (req, res, next) {
  res.render('reseaux', {});
});
module.exports = router;