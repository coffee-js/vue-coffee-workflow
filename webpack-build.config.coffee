fs = require 'fs'
ExtractTextPlugin = require 'extract-text-webpack-plugin'

module.exports =
  entry:
    style: './src/main.css'
    main: './src/main.coffee'
  output:
    path: 'build/'
    filename: '[name].[hash:8].js'
  module:
    loaders: [
      test: /\.coffee$/, loader: 'coffee-loader'
    ,
      test: /\.css$/, loader: ExtractTextPlugin.extract('style-loader', 'css-loader')
    ,
      test: /\.vue$/, loader: 'vue'
    ]
  resolve:
    extensions: ['', '.coffee', '.js']
  plugins: [
    new ExtractTextPlugin '[name].[hash:8].css'
  ,
    ->
      @plugin "done", (stats) ->
        content = JSON.stringify stats.toJson().assetsByChunkName
        fs.writeFileSync 'build/assets.json', content
  ]
