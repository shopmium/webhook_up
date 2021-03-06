# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "webhook_up/version"

Gem::Specification.new do |spec|
  spec.name = "webhook_up"
  spec.version = WebhookUp::VERSION
  spec.authors = ["Maxime Garcia"]
  spec.email = ["maxime.garcia@gmail.com"]

  spec.summary = "Client for calling webhooks"
  spec.description = "Client for calling webhooks"
  spec.homepage = "https://github.com/maximeg/webhook_up"
  spec.license = "MIT"

  spec.required_ruby_version = ">= 2.0.0"

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rubocop", "~> 0.49.0"
  spec.add_development_dependency "rspec", "~> 3.6"
end
