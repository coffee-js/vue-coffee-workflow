
Vue = require 'vue'

module.exports = Vue.component 'home',
  props: {}
  render: (h) ->
    h 'div', attrs: {}, [
      'routed page home'
    ]
