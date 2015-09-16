webpackConfig = require('./webpack.config.js')

module.exports = (grunt) ->
  require('load-grunt-tasks')(grunt)
  grunt.initConfig {
    clean: # Clean Dist Files
      dev: ['.tmp']
      release: ['dist']
    webpack:
      app: webpackConfig.generateAppConfig(false)
      serverD: webpackConfig.generateServerConfig(false)
    'webpack-dev-server':
      app:
        webpack: webpackConfig.generateAppConfig(true)
        publicPath:'/public/'
        hot: true
        historyApiFallback: true
        stats:
          colors: true
        port: 3000
    watch:
      server:
        files: './dist/public/**/*'
        tasks: ['webpack-dev-server']
  }
  grunt.registerTask 'default', [
    'clean:dev'
    'webpack-dev-server'
    'watch'
  ]
  grunt.registerTask 'release', [
    'clean:release'
    'webpack'
  ]