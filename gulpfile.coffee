
fs = require 'fs'
gulp = require 'gulp'


gulp.task 'html', (cb) ->
  template = require './tasks/template'

  html = template.render()
  fs.writeFile 'build/index.html', html, (err) ->
    if err then throw err
    else cb()

gulp.task 'ssr', (cb) ->
  process.env.VUE_ENV = 'server'
  Vue = require 'vue'
  renderer = require('vue-server-renderer').createRenderer()
  Container = require './src/comp/container'
  app = new Vue
    components:
      container: Container
    render: (h) ->
      h 'container'
  renderer.renderToString app, (err, html) ->
    console.log err, html
    cb()
