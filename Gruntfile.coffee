module.exports = (grunt) ->
  require('load-grunt-tasks')(grunt)
  grunt.initConfig {
    # For Release
    clean: # Clean Dist Files
      dev: ['.tmp']
      release: ['dist']
    babel: # Transform ES7 code to ES5
      options:
        sourceMap: true
      dev:
        files:
          '.tmp/index.js': 'src/app/index.js'
      release:
        files:
          './dist/public/app.js': './src/app/index.js'
          './dist/server.js': 'src/server/index.js'
    watch:
      server:
        files: './src/app/**/*'
        tasks: ['babel:dev']
  }
  grunt.registerTask 'default', ['clean:dev', 'babel:dev', 'watch']
  grunt.registerTask 'release', ['clean:release', 'babel:release']