"use strict";

const express = require('express');
const app = express();

const ExampleEndpoint = require("./src/ExampleEndpoint.js");
let exampleEndpoint = new ExampleEndpoint();

app.get('/init', function (req, res) {
	const state = exampleEndpoint.onInit(req.query.bid,req.query.ask);
  	res.send(state);
})

app.get('/tick', function (req, res) {
	const state = exampleEndpoint.onTick(req.query.bid,req.query.ask);
  	res.send(state);
})

app.get('/deinit', function (req, res) {
	const state = exampleEndpoint.onDeInit(req.query.bid,req.query.ask);
  	res.send(state);
})

app.listen(80, function () {
  	console.log('started Trading API on port 80');
})