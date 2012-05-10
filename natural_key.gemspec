require File.expand_path('../lib/natural_key/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Sharad Jain"]
  gem.email         = ["shaanjain@gmail.com"]
  gem.description   = %q{ActiveRecord.create_or_update based on a user-defined natural-key}
  gem.summary       = %q{ActiveRecord.create_or_update based on a user-defined natural-key}
  gem.homepage      = %q{http://github.com/sjain/natural_key}

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "natural_key"
  gem.require_paths = ["lib"]
  gem.version       = NaturalKey::VERSION
  gem.add_dependency "activerecord", "~> 3.2.0"
  gem.add_development_dependency "rake", "~> 0.9.2.2"
  gem.add_development_dependency "minitest", "~> 3.0.0"
end


# -*- encoding: utf-8 -*-

#Gem::Specification.new do |s|
  #s.name = %q{natural_key}
  #s.version = NaturalKey::VERSION

  #s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  #s.authors = ["Sharad Jain"]
  #s.date = %q{2010-02-26}
  #s.description = %q{ActiveRecord.create_or_update based on a user-defined natural-key}
  #s.email = %q{shaanjain@gmail.com}
  #s.extra_rdoc_files = ["CHANGELOG", "README.rdoc", "lib/natural_key.rb", "lib/natural_key/base.rb"]
  #s.files = ["CHANGELOG", "Manifest", "README.rdoc", "Rakefile", "VERSION.yml", "lib/natural_key.rb", "lib/natural_key/base.rb", "natural_key.gemspec", "test/database.yml", "test/fixtures/schema.rb", "test/lib/activerecord_test_case.rb", "test/lib/activerecord_test_connector.rb", "test/test_helper.rb", "test/test_natural_key.rb"]
  #s.homepage = %q{http://github.com/sjain/natural_key}
  #s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Natural_key", "--main", "README.rdoc"]
  #s.require_paths = ["lib"]
  #s.rubyforge_project = %q{natural_key}
  #s.rubygems_version = %q{1.3.5}
  #s.summary = %q{ActiveRecord.create_or_update based on a user-defined natural-key}
  #s.test_files = ["test/test_helper.rb", "test/test_natural_key.rb"]

  #if s.respond_to? :specification_version then
  #  current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
  #  s.specification_version = 3
  #
  #  if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
  #  else
  #  end
  #else
  #end
#end
