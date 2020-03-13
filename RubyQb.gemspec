# frozen_string_literal: true

require_relative 'lib/RubyQb/version'

Gem::Specification.new do |spec|
  spec.name          = 'RubyQb'
  spec.version       = RubyQb::VERSION
  spec.authors       = ['Kyle Oliver']
  spec.email         = ['56kyleoliver@gmail.com']

  spec.summary       = 'The idea behind RubyQb is to make a library out of Qbxml'
  spec.description   = 'Makes a language out of Qbxml'
  spec.homepage      = "https://github.com/56kyle/RubyQb"
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = "https://github.com/56kyle/RubyQb"
  spec.metadata['changelog_uri'] = "https://github.com/56kyle/RubyQb/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
