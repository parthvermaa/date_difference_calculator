# frozen_string_literal: true

require_relative "lib/difference_calculator/version"

Gem::Specification.new do |spec|
  spec.name = "difference_calculator"
  spec.version = DifferenceCalculator::VERSION
  spec.authors = ["Parth Verma"]
  spec.email = ["parthverma011@gmail.com"]
  spec.summary = "Get exact month difference between dates"
  spec.homepage = "TODO: Put your gem's website or public repo URL here."
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"
  spec.files         = Dir["lib/**/*.rb"]
  spec.homepage      = "https://your-gem-homepage.com"

  spec.add_runtime_dependency "date", "~> 3.2"
end


