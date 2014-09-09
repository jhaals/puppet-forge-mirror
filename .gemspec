# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name                  = 'puppet-forge-mirror'
  s.version               = '0.0.2'
  s.author                = 'Johan Haals'
  s.email                 = ['johan.haals@gmail.com']
  s.homepage              = 'https://github.com/jhaals/puppet-forge-mirror'
  s.summary               = "Mirror the Puppet Forge by downloading it's modules"
  s.license               = 'Apache 2.0'
  s.files                 = `git ls-files`.split("\n")
  s.executables           << 'puppet-forge-mirror'
  s.require_paths         = ['lib', 'bin']
  s.required_ruby_version = '>= 1.9.3'
end

