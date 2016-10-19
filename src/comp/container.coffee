
Vue = require 'vue'

Panel = require './panel'
Counter = require './counter'
Piece = require './piece.vue'

module.exports = Vue.component 'container',
  props: {}
  components:
    panel: Panel
    counter: Counter
    piece: Piece
  render: (h) ->
    h 'div', attrs: {id: 'app'}, [
      h 'div', [
        'app!'
      ]
      h 'panel'
      h 'counter'
      h 'router-view', class: 'view'
      h 'piece'
    ]
