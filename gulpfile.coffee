
fs = require 'fs'
gulp = require 'gulp'
path = require 'path'

settings = require './tasks/settings'

gulp.task 'ssr', (cb) ->
  process.env.VUE_ENV = 'server'
  Vue = require 'vue'
  Vuex = require 'vuex'
  VueRouter = require 'vue-router'
  mkpath = require 'mkpath'
  # need to put it before store initialization
  Vue.use Vuex
  store = require './src/store'
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
      store: store
      components:
        container: Container
      render: (h) ->
        h 'container'
    router.push address
    renderer.renderToString app, (err, appHtml) ->
      if err?
        throw err
      else
        html = template.render appHtml, store.state, settings
        htmlPath = path.join 'build', address
        console.log 'render entry:', htmlPath
        mkpath.sync path.dirname(htmlPath)
        fs.writeFileSync htmlPath, html
