express = require 'express'
multer = require 'multer'
path = require 'path'
crypto = require 'crypto'

app = new express()

storage = multer.diskStorage {
  destination: './uploads'
  filename: (req, file, cb) ->
    crypto.pseudoRandomBytes 16, (err, raw) ->
      return cb(err) if err
      cb(null, "#{raw.toString 'hex'}#{path.extname file.originalname}")
}

app.post('/', multer({ storage: storage}).single('upload'), (req, res) ->
    console.log(req.file)
    console.log(req.body)
    res.status(204).end()
  )

app.listen 3000, console.log("Listening on port 3000")
