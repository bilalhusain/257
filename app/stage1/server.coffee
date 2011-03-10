http = require 'http'
http.createServer (req, res) ->
	res.writeHead 200, {'Content-Type': 'test/plain}
	res.end "257. Manage Movies. Beta invites via 257.invite@gmail.com"
.listen 8080
