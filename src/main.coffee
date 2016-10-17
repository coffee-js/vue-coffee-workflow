
Vue = require 'vue'

Container = require './comp/container'

new Vue
  el: '#app'
  components:
    container: Container
  render: (h) ->
    h 'container', {}
