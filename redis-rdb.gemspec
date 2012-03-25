# -*- encoding: utf-8 -*-

$:.unshift File.expand_path('../lib', __FILE__)

require 'rdb/version'

Gem::Specification.new do |s|
  s.name = 'redis-rdb'
  s.version = RDB::VERSION
  s.homepage = 'https://github.com/nrk/redis-rdb'
  s.license = 'MIT'

  s.summary = 'A set of utilities to handle Redis .rdb files.'
  s.description = <<-EOS
    This library provides a set of modules and classes that make it easy to handle
    binary database dumps generated by Redis (.rdb files).
  EOS

  s.authors = ['Daniele Alessandri']
  s.email   = ['suppakilla@gmail.com']

  s.required_ruby_version = '>= 1.9.0'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables  = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }

  s.add_development_dependency('rake')
  s.add_development_dependency('cutest')
end