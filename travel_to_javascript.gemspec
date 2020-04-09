# frozen_string_literal: true

require_relative 'lib/travel_to_javascript/version'

Gem::Specification.new do |spec|
  spec.name          = 'travel_to_javascript'
  spec.version       = TravelToJavascript::VERSION
  spec.authors       = ['Madogiwa']
  spec.email         = ['madogiwa0124@gmail.com']

  spec.summary       = 'This gem provides a helper `travel_to_javascript` that locks time in javascript.'
  spec.description   = 'This gem provides a helper `travel_to_javascript` that locks time in javascript.'
  spec.homepage      = 'https://github.com/Madogiwa0124/travel_to_javascript'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.5.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_runtime_dependency 'capybara'
  spec.add_runtime_dependency 'rspec'
  spec.add_runtime_dependency 'webdrivers', '~> 4.0'
end
