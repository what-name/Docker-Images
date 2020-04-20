const express = require('express')
var serveIndex = require('serve-index');

const port = 3000
const app = express()

app.use(express.static(__dirname + "/"))
app.use('/data', serveIndex(__dirname + '/data', {'icons': true}));

app.listen(port, function(){
	console.log(`Server started on port ${port}`)
})