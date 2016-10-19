
webpack = require 'webpack'

module.exports =
  target: 'node'
  entry:
    container: './src/comp/container.coffee'
  output:
    path: 'build/'
    filename: 'container.js'
    libraryTarget: 'commonjs2'
  externals: Object.keys(require('./package.json').dependencies),
  module:
    loaders: [
      test: /\.coffee$/, loader: 'coffee-loader'
    ,
      test: /\.css$/, loader: 'style!css'
    ,
      test: /\.vue$/, loader: 'vue'
    ]
  resolve:
    extensions: ['', '.coffee', '.js']
  plugins: []
