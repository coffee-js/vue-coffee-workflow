
Vue = require 'vue'
Vuex = require 'vuex'
VueRouter = require 'vue-router'

Vue.use VueRouter
Vue.use Vuex

Container = require './comp/container'
router = require './router'
store = require './store'

storeEl = document.querySelector('#store')
if storeEl?
  rawData = storeEl.getAttribute('content')
  store.replaceState JSON.parse(rawData)

console.log 'store:', store

new Vue
  el: '#app'
  router: router
  store: store
  components:
    container: Container
  render: (h) ->
    h 'container', {}
