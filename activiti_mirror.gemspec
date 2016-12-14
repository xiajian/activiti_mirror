# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activiti_mirror/version'

Gem::Specification.new do |spec|
  spec.name          = "activiti_mirror"
  spec.version       = ActivitiMirror::VERSION
  spec.authors       = ["xiajian"]
  spec.email         = ["jhqy2011@gmail.com"]

  spec.summary       = %q{activiti_mirror is a tool, which use to upload activit file to qiniu and download it}
  spec.description   = %q{activiti_mirror is a tool, which use to upload activit file to qiniu and download it}
  spec.homepage      = "https://github.com/xiajian/activiti_mirror"
  spec.license       = "mit"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = ["activiti_mirror"]
  spec.require_paths = ["lib"]

  spec.add_dependency('methadone', '~> 1.9.3')
  spec.add_dependency 'sshkit'
    
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency('rdoc')
  spec.add_development_dependency('aruba')

end
