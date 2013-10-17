$:.push File.expand_path('../lib', __FILE__)

require 'ben_templates/version'

Gem::Specification.new do |s|
  s.name        = 'ben_templates'
  s.version     = BenTemplates::VERSION
  s.authors     = ['Benjamin Michotte']
  s.email       = ['bmichotte@gmail.com']
  s.homepage    = 'https://github.com/bmichotte/ben_templates'
  s.summary     = 'Twitter Bootstrap 3 scaffolding templates'
  s.description = 'Templates I use for scaffolding. This use Twitter Bootstrap 3'

  #s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  #s.test_files = Dir['test/**/*']
  #s.require_paths = %w(lib)

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = %w(lib)
  s.add_runtime_dependency 'will_paginate'

  s.add_dependency 'rails', '~> 4.0.0'
  s.add_dependency 'less-rails'
  s.add_dependency 'will_paginate', '~> 3.0'
end