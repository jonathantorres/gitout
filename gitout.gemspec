lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'gitout/version'

Gem::Specification.new do |spec|
  spec.name = 'gitout'
  spec.version = Gitout::VERSION
  spec.summary = 'Find out much code you pushed to GitHub on a single day.'
  spec.description = 'Check how much code you pushed to GitHub on a single day.'
  spec.authors = ['Jonathan Torres']
  spec.email = 'jonathantorres41@gmail.com'
  spec.files = %w(LICENSE.md README.md gitout.gemspec)
  spec.files += Dir['lib/**/*.rb'] + Dir['bin/*']
  spec.executables << 'gitout'
  spec.homepage = 'https://github.com/jonathantorres/gitout'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 1.9.2'
  spec.required_rubygems_version = '>= 1.3.5'
end
