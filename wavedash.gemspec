lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wavedash/version'

Gem::Specification.new do |spec|
  spec.name          = "wavedash"
  spec.version       = Wavedash::VERSION
  spec.authors       = ["Takatoshi Ono"]
  spec.email         = ["takatoshi.ono@gmail.com"]

  spec.summary       = %q{Normalize characters like WAVE DASH}
  spec.description   = %q{Normalize characters that problem occurs when encoding}
  spec.homepage      = "https://github.com/takatoshiono/wavedash"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
