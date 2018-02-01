import express from 'express';
var app = express.Router();

app.get('/', (req, res, next) => {
  res.render("index");
  next();
});

module.exports = app;
