var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var conn = mysql.createConnection({
	database: 'kickswebsite',
	host: "localhost",
	user: "root",
	password: "Bonjour"
  });
/* GET home page. */
router.get('/', function (req, res, next) {
	res.render('index', {});
});

router.get('/produit', function (req, res, next) {
	var resultat;
	conn.connect(function(err) {
		if (err) throw err;
		conn.query("SELECT * FROM size_shoes, shoes, color, size	WHERE size_shoes.idshoes = shoes.id AND	size_shoes.idsize = size.id AND	size_shoes.idcolor1 = color.id AND	size_shoes.idcolor2 = color.id AND quantity > 0", function (err, result, fields) {
		  if (err) throw err;
		  resultat = result;
		});
	  });
	res.render('produit', {result:resultat});
});

router.get('/reseaux', function (req, res, next) {
	res.render('reseaux', {});
});

module.exports = router;