module.exports = (grunt) ->

  require('load-grunt-tasks')(grunt)
  grunt.loadNpmTasks('bootcamp')

  grunt.initConfig

    clean:
      build: ["./dist/*"]

    sass:
      options:
        debug: false
      dist:
        files:
          'examples/example1.css': 'examples/example1.sass'
          'test_results.css': 'test_runner.sass'

    bootcamp:
      test:
        files:
          src: ['./test_results.css']

    concat:
      options:
        banner: '// Ionica - Lightweight responsive grid\n'
      dist:
        src: ['src/cast.sass', 'src/utilities.sass', 'src/main.sass']
        dest: 'dist/ionica.sass'

    watch:
      css:
        files: ['./*.sass', 'src/**/*.sass', 'examples/**/*.sass', 'specs/**/*.sass']
        tasks: ['build']

  grunt.registerTask 'build', ['clean:build', 'concat', 'sass', 'bootcamp']