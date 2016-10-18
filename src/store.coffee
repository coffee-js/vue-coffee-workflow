
Vuex = require 'vuex'

state = count: 0

mutations =
  increment: (state) ->
    state.count = state.count + 1
  decrement: (state) ->
    state.count = state.count - 1

getters =
  count: (state) -> state.count

actions =
  inc: ({commit}) ->
    commit 'increment'
  dec: ({commit}) ->
    commit 'increment'

module.exports = new Vuex.Store {state, mutations, actions, getters}
