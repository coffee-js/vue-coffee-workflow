
Vue = require 'vue'

module.exports = Vue.component 'container',
  props: {}
  render: (h) ->
    h 'div', attrs: {id: 'app'}, [
      h 'div', [
        'container inside'
      ]
      h 'div', [
        'main.coffee'
      ]
    ]
