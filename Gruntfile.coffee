module.exports = (grunt) ->

  require('load-grunt-tasks')(grunt)

  grunt.initConfig

    sass:
      options:
        debug: true
      dist:
        files:
          'examples/example1.css': 'examples/example1.sass'

    watch:
      css:
        files: ['ionica.sass', 'utilities.sass', 'examples/**/*.sass']
        tasks: ['sass']
