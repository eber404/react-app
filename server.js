require('dotenv/config')
const express = require('express')

const server = express()

server.use(express.static('build'))

server.listen(8080, () => console.log('listening on port', 8080))
