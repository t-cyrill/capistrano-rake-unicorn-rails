# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-rake-unicorn-rails'
  spec.version       = '0.1.0'
  spec.authors       = ['cyrill']
  spec.email         = ['siril.taka@gmail.com']
  spec.licenses      = ['MIT']

  spec.summary       = %q{Capistrano unicorn start/stop task}
  spec.description   = %q{Capistrano task for rake-unicorn-rails.}

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'capistrano', '~> 3.3', '>= 3.3.0'
  spec.add_runtime_dependency 'rake', '>= 10.0', '< 12.0'
  spec.add_runtime_dependency 'rake-unicorn-rails', '~> 0.1'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
