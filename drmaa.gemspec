$:.push File.expand_path("../lib", __FILE__)
require 'drmaa/version'

Gem::Specification.new do |s|
  s.name = 'drmaa'
  s.version = Drmaa::VERSION
  s.platform = Gem::Platform::RUBY
  s.date = '2011-12-18'
  s.authors = ['Mark J. Titorenko','Jeremy Lipson','Chris Young']
  s.email = 'mark.titorenko@alces-software.com'
  s.homepage = 'http://github.com/mjtko/drmaa'
  s.summary = %Q{FFI bindings to the Distributed Resource Management Application API}
  s.description = %Q{Distributed Resource Management Application API is a high-level Open Grid Forum API specification for the submission and control of jobs to a Distributed Resource Management (DRM) system - this gem provides Ruby bindings to the DRMAA with FFI.}
  s.extra_rdoc_files = [
    'LICENSE.txt',
    'README.txt',
  ]

  s.required_rubygems_version = Gem::Requirement.new('>= 1.3.7')
  s.rubygems_version = '1.3.7'
  s.specification_version = 3

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'ffi'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'bueller'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rcov'
end

