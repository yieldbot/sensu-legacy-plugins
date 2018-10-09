lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'date'
require 'sensu-legacy-plugins/version'

Gem::Specification.new do |s|
  s.authors                = ['Yieldbot, Inc. and contributors']
  s.bindir                 = 'bin'
  s.date                   = Date.today.to_s
  s.description            = 'Yieldbot fork of orginal Sensu plugins repo'
  s.email                  = '<devops@yieldbot.com>'
  s.executables            = Dir.glob('bin/*.rb').map { |file| File.basename(file) }
  s.files                  = Dir.glob('{bin,lib}/**/*')
  s.homepage               = 'https://github.com/yieldbot/sensu-legacy-plugins'
  s.license                = 'MIT'
  s.name                   = 'sensu-legacy-plugins'
  s.platform               = Gem::Platform::RUBY
  s.required_ruby_version  = '>= 1.9.3'
  s.require_paths          = ['lib']
  s.summary                = 'Yieldbot fork of orginal Sensu plugins repo'
  s.test_files             = s.files.grep(%r{^(test|spec|features)/})
  s.version                = SensuLegacyPlugins::Version::STRING

  s.add_runtime_dependency 'sensu-plugin', '~> 1.2'
  s.add_runtime_dependency 'rest-client',  '1.8.0'

  s.add_development_dependency 'bundler',       '~> 1.7'
  s.add_development_dependency 'github-markup', '~> 1.3'
  s.add_development_dependency 'rake',          '~> 10.5'
  s.add_development_dependency 'redcarpet',     '~> 3.2'
  s.add_development_dependency 'rspec',         '~> 3.1'
  s.add_development_dependency 'rubocop',       '~> 0.49.0'
  s.add_development_dependency 'yard',          '~> 0.9.11'
end
