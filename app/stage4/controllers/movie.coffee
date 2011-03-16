module.exports = (app) ->
	app.get '/movie/:id', (req, res) ->
		app.movie.findOne {
			id: req.params.id
		}, (err, m) ->
			if (err || !m)
				res.send 'not found'
				return
			res.end 'movie ' + m.name
