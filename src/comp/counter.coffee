
Vue = require 'vue'

module.exports = Vue.component 'counter',
  computed:
    count: ->
      @$store.state.count
  methods:
    onClick: (event) ->
      console.log @$store.dispatch('inc')
  render: (h) ->
    h 'div', [
      'counter:'
      JSON.stringify(@count)
      h 'div', on: {click: @onClick}, [
        'add  '
      ]
    ]
