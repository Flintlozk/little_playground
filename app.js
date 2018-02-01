require('babel-core/register');
require('babel-polyfill');
// require('./src/app');
var express = require('express');
var path = require('path');
// var favicon = require('serve-favicon');
var bodyParser = require('body-parser');

//Import Routes
var index = require('./src/app/index');

//Engine
var app = express();

var port = process.env.PORT || 9999;

app.set('views', path.join(__dirname, '/src/views'));
app.set('view engine', 'ejs');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', index);

app.listen(port, function () {});

module.exports = app;
