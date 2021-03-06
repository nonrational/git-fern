# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'git/peer/version'

Gem::Specification.new do |spec|
  spec.name          = "git-peer"
  spec.version       = Git::Peer::VERSION
  spec.authors       = ["Alan Norton"]
  spec.email         = ["me@alannorton.com"]
  spec.summary       = %q{List GitHub PR merges between two git refs}
  spec.description   = ""
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 2.6"

  spec.add_dependency "octokit", "~> 3.0"
  spec.add_dependency "rugged", "~> 0.21"
  spec.add_dependency "colored", '~> 1.2'
  spec.add_dependency "trollop", '~> 2.0'

end
