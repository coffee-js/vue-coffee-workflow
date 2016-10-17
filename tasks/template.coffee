
stir = require 'stir-template'

{html, body, head, div, link, script} = stir

exports.render = ->
  stir.render stir.doctype(),
    stir.html null,
      stir.head null,
        stir.script defer: true, src: 'http://localhost:8080/main.js'
      stir.body null,
        stir.div id: 'app'
