require('dotenv/config')
const express = require('express')
const server = express()

const PORT = process.env.PORT

server.use('/', express.static('build'))

server.listen(PORT, () => console.log('listening on port', PORT))
