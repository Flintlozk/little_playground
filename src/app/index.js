import express from 'express';
import Arrays from './Arrays'
var app = express.Router();

app.get('/', (req, res, next) => {
  res.render("index");
  next();
});

module.exports = app;
