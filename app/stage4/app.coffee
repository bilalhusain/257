http = require 'http'
express = require 'express'
mongoose = require 'mongoose'
jade = require 'jade'

mongoose.connect 'mongodb://localhost/db'
app = express.createServer();

require './models/movie'
app.movie = mongoose.model 'movie';

homeController = require './controllers/home'
homeController app

movieController = require './controllers/movie'
movieController app

app.listen 8080
