var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function (req, res, next) {
	res.render('index', {});
});

router.get('/produit', function (req, res, next) {
	var req = "SELECT * FROM size_shoes, shoes, color, size	WHERE size_shoes.idshoes = shoes.id AND	size_shoes.idsize = size.id AND	size_shoes.idcolor1 = color.id AND	size_shoes.idcolor2 = color.id AND quantity > 0";
	res.render('produit', {});
});

router.get('/reseaux', function (req, res, next) {
	res.render('reseaux', {});
});

module.exports = router;