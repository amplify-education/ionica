# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ionica/version'

Gem::Specification.new do |gem|
  gem.name          = 'ionica'
  gem.version      = Ionica::VERSION
  gem.authors      = ['Tomislav Pesut', 'Anna Andresian']
  gem.email        = ['tpesut@amplify.com', 'aandresian@amplify.com']
  gem.description  = %q{A gem that provides a lightweight responsive grid}
  gem.summary      = %q{A gem that provides a lightweight responsive grid}
  gem.homepage      = 'http://rubygems.org/gems/ionica'
  gem.license      = 'MIT'

  gem.add_dependency 'railties'
  gem.add_dependency 'sass', '~> 3.4.5'

  gem.files = Dir['{lib,app}/**/*'] + ['LICENSE', 'README.md']
  gem.require_paths = ['lib', 'app']
end