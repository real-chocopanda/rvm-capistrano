lib = File.expand_path('../lib/', __FILE__)

$:.unshift lib unless $:.include?(lib)

require 'rvm/capistrano/version'
require 'yaml'

Gem::Specification.new do |spec|
  spec.name        = 'rvm-capistrano'
  spec.version     = ::RVM::Capistrano::Version
  spec.platform    = Gem::Platform::RUBY
  spec.authors     = ['Wayne E. Seguin', '"Michał Papis, ']
  spec.email       = ['wayneeseguin@gmail.com','mpapis@gmail.com']
  spec.homepage    = 'https://rvm.beginrescueend.com/'
  spec.summary     = 'RVM / Capistrano Integration Gem'
  spec.description = 'RVM / Capistrano Integration Gem'

  spec.add_dependency 'capistrano'

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest'

  spec.require_path = 'lib'
  spec.files        = YAML.load_file('Manifest.yml')
  spec.test_files   = Dir.glob('spec/**/*.rb')
end

