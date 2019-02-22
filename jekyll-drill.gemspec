lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll-drill/version"
Gem::Specification.new do |spec|
  spec.name          = "jekyll-drill"
  spec.summary       = "Filter for drilling into an object with a dot-notated string"
  spec.description   = "Filter for drilling into an object with a dot-notated string"
  spec.version       = JekyllDrill::VERSION
  spec.authors       = ["Brock Fanning"]
  spec.email         = ["brockfanning@gmail.com"]
  spec.homepage      = "https://github.com/brockfanning/jekyll-drill"
  spec.licenses      = ["MIT"]
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r!^(test|spec|features)/!)  }
  spec.require_paths = ["lib"]
  spec.add_dependency "jekyll", "~> 3.0"
  spec.add_development_dependency "rake", "~> 11.0"
  spec.add_development_dependency "rspec", "~> 3.5"
  spec.add_development_dependency "rubocop", "~> 0.52"
end
