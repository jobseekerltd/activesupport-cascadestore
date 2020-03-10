# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'activesupport-cascadestore'
  s.version     = '0.0.2'
  s.authors     = ['Jerry Cheung']
  s.email       = ['jch@whatcodecraves.com']
  s.homepage    = 'http://github.com/jch/activesupport-cascadestore'
  s.summary     = %q{write-through cache store that allows you to chain multiple cache stores together}
  s.description = %q{write-through cache store that allows you to chain multiple cache stores together}

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if s.respond_to?(:metadata)
    s.metadata['allowed_push_host'] = 'https://rubygems.pkg.github.com/jobseekerltd'
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  s.rubyforge_project = 'activesupport-cascadestore'

  s.files         = `git ls-files`.split($\)
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split($\)
  s.executables   = `git ls-files -- bin/*`.split($\).map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'activesupport'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'memcache-client'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'memcached_store'
end
