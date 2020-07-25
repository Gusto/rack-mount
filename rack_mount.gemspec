
Gem::Specification.new do |s|
  s.name        = 'rack_mount'
  s.version     = '0.1'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Joshua Peek']
  s.homepage    = 'https://github.com/Gusto/rack-mount'
  s.summary     = 'A stackable dynamic tree based Rack router.'
  s.license     = 'MIT'

  s.add_runtime_dependency 'activesupport'
  s.add_runtime_dependency 'iconv'
  s.add_runtime_dependency 'merb-core'

  s.add_development_dependency 'rails', '>= 2.3.18'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'yaml'
  s.add_development_dependency 'test-unit'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
end
