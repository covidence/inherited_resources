lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "inherited_resources/version"

Gem::Specification.new do |s|
  s.name        = "inherited_resources"
  s.version     = InheritedResources::VERSION.dup
  s.platform    = Gem::Platform::RUBY
  s.summary     = "Inherited Resources speeds up development by making your controllers inherit all restful actions so you just have to focus on what is important."
  s.homepage    = "https://github.com/activeadmin/inherited_resources"
  s.description = "Inherited Resources speeds up development by making your controllers inherit all restful actions so you just have to focus on what is important."
  s.authors     = ['José Valim', 'Rafael Mendonça França']
  s.license     = "MIT"

  s.rubyforge_project = "inherited_resources"

  s.files         = Dir["app/**/*", "lib/**/*", "README.md", "MIT-LICENSE"]
  s.require_paths = ["lib"]

  s.required_ruby_version = '>= 2.3'

  s.add_dependency("responders")
  s.add_dependency("actionpack", ">= 5.0", "< 6.1")
  s.add_dependency("railties", ">= 5.0", "< 6.1")
  s.add_dependency("has_scope",  "~> 0.6")
end
