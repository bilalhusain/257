http = require 'http'
express = require 'express'
mongoose = require 'mongoose'

#db init stuff
mongoose.connect 'mongodb://localhost/db'

movieSchema = new mongoose.Schema({
	id: Number,
	name: String
});

mongoose.model 'movie', movieSchema;
movie = mongoose.model 'movie';

#scumbag never disconnect
#mongoose.disconnect()

app = express.createServer()

app.get '/', (req, res) ->
        res.send '257. Manage Movies. Beta invites via 257.invite@gmail.com'

app.get '/movie/:id', (req, res) ->
	movie.findOne {
		id: req.params.id
	}, (err, m) ->
		if (err || !m)
			res.send 'not found'
			return
		res.send 'movie ' + m.name

app.listen 8080
