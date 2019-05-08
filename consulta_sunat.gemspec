
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "consulta_sunat/version"

Gem::Specification.new do |spec|
  spec.name          = "consulta_sunat"
  spec.version       = ConsultaSunat::VERSION
  spec.authors       = ["Jharol Salvador Rivera"]
  spec.email         = ["jharol.salvador@gmail.com"]

  spec.summary       = %q{RubyGem para realizar consultas a Sunat Perú a traves del número de dni o ruc}
  spec.homepage      = "https://github.com/jsalvad0r"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir['lib/**/*.*']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
