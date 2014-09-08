$:.push File.expand_path('../lib', __FILE__)

require 'ben_templates/version'

Gem::Specification.new do |s|
  s.name        = 'ben_templates'
  s.version     = BenTemplates::VERSION
  s.authors     = ['Benjamin Michotte']
  s.email       = ['bmichotte@gmail.com']
  s.homepage    = 'https://github.com/bmichotte/ben_templates'
  s.summary     = %q{Twitter Bootstrap 3 scaffolding templates}
  s.description = %q{Templates I use for scaffolding. This use Twitter Bootstrap 3}
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = %w(lib)
  #s.add_runtime_dependency 'will_paginate', '>= 3.0'

  s.add_dependency 'rails', '>= 4.0.0'
  s.add_dependency 'less-rails'
  s.add_dependency 'will_paginate', '>= 3.0'
end
