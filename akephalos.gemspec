# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require "akephalos/version"

Gem::Specification.new do |s|
  s.name              = "akephalos2"
  s.version           = Akephalos::VERSION
  s.platform          = ENV["PLATFORM"] || "ruby"
  s.authors           = ["Bernerd Schaefer"]
  s.email             = "bj.schaefer@gmail.com"
  s.homepage          = "https://github.com/Nerian/akephalos"
  s.summary           = "Headless Browser for Integration Testing with Capybara"
  s.description       = s.summary
  s.rubyforge_project = "akephalos"

  s.add_runtime_dependency "capybara"
  s.add_runtime_dependency "rake"
  
  if RUBY_PLATFORM != "java" && ENV["PLATFORM"] != "java"
    s.add_runtime_dependency "jruby-jars"
  end

  s.add_development_dependency "sinatra"
  s.add_development_dependency "rspec"

  s.files         = Dir.glob("lib/**/*.rb") + Dir.glob("vendor/**/*.jar") + %w(README.md MIT_LICENSE)
  s.require_paths = %w(lib vendor)
  s.executables   = %w(akephalos)
end
