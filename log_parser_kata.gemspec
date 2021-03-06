
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "log_parser_kata/version"

Gem::Specification.new do |spec|
  spec.name          = "log_parser_kata"
  spec.version       = LogParserKata::VERSION
  spec.authors       = ["Lucas Mbiwe"]
  spec.email         = ["lucas@geek4good.com"]

  spec.summary       = "A little kata involving a web server log parser."
  spec.description   = "This is not really a log parser, but rather an exercise to practice good programming habits."
  spec.homepage      = "https://github.com/geek4good/log_parser_kata"
  spec.license       = "MIT"

  spec.required_ruby_version = '~> 2.3'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
