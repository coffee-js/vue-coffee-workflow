
Vue = require 'vue'

module.exports = Vue.component 'home',
  props: {}
  render: (h) ->
    h 'div', attrs: {}, [
      h 'div', [
        h 'router-link', props: {to: '/index.html'}, ['/index.html']
      ]
      h 'div', [
        h 'router-link', props: {to: '/page/a.html'}, ['/page/a.html']
      ]
      h 'div', [
        h 'router-link', props: {to: '/page/b.html'}, ['/page/b.html']
      ]
    ]
