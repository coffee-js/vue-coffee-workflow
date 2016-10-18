
fs = require 'fs'
gulp = require 'gulp'
path = require 'path'

gulp.task 'html', (cb) ->
  template = require './tasks/template'

  html = template.render()
  fs.writeFile 'build/index.html', html, (err) ->
    if err then throw err
    else cb()

gulp.task 'ssr', (cb) ->
  process.env.VUE_ENV = 'server'
  Vue = require 'vue'
  VueRouter = require 'vue-router'
  mkpath = require 'mkpath'
  router = require './src/router'
  renderer = require('vue-server-renderer').createRenderer()
  Container = require './src/comp/container'
  template = require './tasks/template'
  Vue.use VueRouter

  # this is the initial address
  entries = [
    'index.html'
    'page/a.html'
    'page/b.html'
  ]
  entries.forEach (address) ->
    app = new Vue
      router: router
      components:
        container: Container
      render: (h) ->
        h 'container'
    router.push address
    renderer.renderToString app, (err, appHtml) ->
      if err?
        throw err
      else
        html = template.render appHtml
        htmlPath = path.join 'build', address
        console.log 'render entry:', htmlPath
        mkpath.sync path.dirname(htmlPath)
        fs.writeFileSync htmlPath, html
