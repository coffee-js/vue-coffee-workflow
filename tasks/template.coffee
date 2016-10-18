
stir = require 'stir-template'

{html, body, head, div, link, script} = stir

exports.render = (appHtml, storeData) ->
  storeContent = JSON.stringify(storeData).replace(/"/g, '&quot;')
  stir.render stir.doctype(),
    stir.html null,
      stir.head null,
        stir.script defer: true, src: 'http://localhost:8080/main.js'
      if storeData?
        stir.meta id: 'store', content: storeContent
      stir.body null,
        if appHtml?
          appHtml
        else
          stir.div id: 'app'
