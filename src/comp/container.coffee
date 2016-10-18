
Vue = require 'vue'

Panel = require './panel'

module.exports = Vue.component 'container',
  props: {}
  components:
    panel: Panel
  render: (h) ->
    h 'div', attrs: {id: 'app'}, [
      h 'div', [
        'app!'
      ]
      h 'panel'
      h 'router-view', class: 'view'
    ]
