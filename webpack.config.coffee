
module.exports =
  entry: './src/main.coffee'
  output:
    filename: 'main.js'
  module:
    loaders: [
      test: /\.coffee$/, loader: 'coffee-loader'
    ]
  resolve:
    extensions: ['', '.coffee', '.js']
