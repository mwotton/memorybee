# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'memorybee/version'

Gem::Specification.new do |spec|
  spec.name          = "memorybee"
  spec.version       = Memorybee::VERSION
  spec.authors       = ["Mark Wotton"]
  spec.email         = ["mwotton@gmail.com"]
  spec.description   = %q{memrise -> beeminder bridge}
  spec.summary       = %q{This is a way to synchronise your memrise scores with beeminder}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "beeminder"
  spec.add_dependency "nokogiri"
end
