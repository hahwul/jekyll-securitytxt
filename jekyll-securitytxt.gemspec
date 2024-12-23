# frozen_string_literal: true

require_relative "lib/jekyll/securitytxt/version"

Gem::Specification.new do |spec|
  spec.name = "jekyll-securitytxt"
  spec.version = Jekyll::Securitytxt::VERSION
  spec.authors = ["HAHWUL"]
  spec.email = ["hahwul@gmail.com"]

  spec.summary = "A Jekyll plugin for generating security.txt files"
  spec.description = "This plugin helps you generate security.txt files for your Jekyll site, " \
                     "providing security contact information and policies."
  spec.homepage = "https://github.com/hahwul/jekyll-securitytxt"
  spec.required_ruby_version = ">= 2.6.0"
  spec.license = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/hahwul/jekyll-securitytxt"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "jekyll", "~> 4.0"
end
