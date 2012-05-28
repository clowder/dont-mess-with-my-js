# -*- encoding: utf-8 -*-
require File.expand_path('../lib/dont_mess_with_my_js/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Chris Lowder']
  gem.email         = ['clowder@gmail.com']
  gem.description   = ''
  gem.summary       = ''
  gem.homepage      = 'https://github.com/clowder/dont-mess-with-my-js'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^spec/})
  gem.name          = 'dont-mess-with-my-js'
  gem.require_paths = ['lib']
  gem.version       = DontMessWithMyJs::VERSION
end
