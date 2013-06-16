Gem::Specification.new do |spec|
  spec.name          = "rubygems-mirror"
  spec.version       = "1.0.2"
  spec.authors       = ["Petrica Horatiu Muresan"]
  spec.email         = ["mphoratiu@yahoo.com"]
  spec.description   = %q{"This is the branch of roadt of rubygems-mirror, with gemspec included."}
  spec.summary       = %q{"This is an update to the old `gem mirror` command. It uses net/http/persistent and threads to grab the mirror set a little faster than the original. Eventually it will replace `gem mirror` completely. Right now the API is not completely stable (it will change several times before release), however, I will maintain stability in master."}
  spec.homepage      = "https://github.com/rubygems/rubygems-mirror"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", '~> 10'
  spec.add_runtime_dependency "net-http-persistent", '~> 2.9'
end
