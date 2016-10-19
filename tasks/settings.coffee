
env = process.env.env

module.exports = switch env
  when 'prod'
    assets = require '../build/assets.json'
    env: 'prod'
    mainJs: "/#{assets.main}"
    mainCss: "/#{assets.style[1]}"
  else
    env: 'dev'
    mainJs: 'http://localhost:8080/main.js'
    mainCss: 'http://localhost:8080/style.js'
