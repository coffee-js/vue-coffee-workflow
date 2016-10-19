
stir = require 'stir-template'

{html, body, head, meta, div, link, script} = stir

exports.render = (appHtml, storeData, settings) ->
  storeContent = JSON.stringify(storeData).replace(/"/g, '&quot;')
  stir.render stir.doctype(),
    html null,
      head null,
        script defer: true, src: settings.mainJs
        if settings.env is 'prod'
          link rel: 'stylesheet', href: settings.mainCss
        else
          script defer: true, src: settings.mainCss
      if storeData?
        meta id: 'store', content: storeContent
      body null,
        if appHtml?
          appHtml
        else
          div id: 'app'
