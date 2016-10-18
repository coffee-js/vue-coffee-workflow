
VueRouter = require 'vue-router'

Home = require './comp/home'
Page = require './comp/page'

module.exports = new VueRouter
  mode: 'history'
  base: __dirname # what's this for?
  routes: [
    path: '/index.html', component: Home
  ,
    path: '/page/:x', component: Page
  ]
