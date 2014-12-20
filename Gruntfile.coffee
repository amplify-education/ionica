module.exports = (grunt) ->

  require('load-grunt-tasks')(grunt)

  grunt.initConfig

    sass:
      options:
        debug: true
      dist:
        files:
          'examples/example1.css': 'examples/example1.sass'

    concat:
      options:
        banner: '// Ionica - Lightweight responsive grid'
      dist:
        src: ['src/cast.sass', 'src/utilities.sass', 'src/ionica.sass']
        dest: 'dist/ionica.sass'

    watch:
      css:
        files: ['src/**/*.sass', 'examples/**/*.sass']
        tasks: ['sass', 'concat']
