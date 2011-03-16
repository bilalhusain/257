http = require 'http'
express = require 'express'

app = express.createServer()

app.get '/', (req, res) ->
        res.send '257. Manage Movies. Beta invites via 257.invite@gmail.com'

app.get '/movie/:id', (req, res) ->
        res.send 'movie ' + req.params.id

app.listen 8080
