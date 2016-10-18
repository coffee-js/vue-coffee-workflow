
Vue = require 'vue'
VueRouter = require 'vue-router'

Vue.use VueRouter

Container = require './comp/container'
router = require './router'

new Vue
  el: '#app'
  router: router
  components:
    container: Container
  render: (h) ->
    h 'container', {}
