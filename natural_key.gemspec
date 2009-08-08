# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{natural_key}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sharad Jain"]
  s.date = %q{2009-08-08}
  s.description = %q{ActiveRecord.create_or_update based on a user-defined natural-key}
  s.email = %q{shaanjain@gmail.com}
  s.extra_rdoc_files = ["CHANGELOG", "README.rdoc", "lib/natural_key/base.rb", "lib/natural_key.rb"]
  s.files = ["CHANGELOG", "Rakefile", "README.rdoc", "Manifest", "lib/natural_key/base.rb", "lib/natural_key.rb", "test/fixtures/schema.rb", "test/test_helper.rb", "test/database.yml", "test/test_natural_key.rb", "test/lib/activerecord_test_connector.rb", "test/lib/activerecord_test_case.rb", "VERSION.yml", "natural_key.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/sjain/natural_key}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Natural_key", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{natural_key}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{ActiveRecord.create_or_update based on a user-defined natural-key}
  s.test_files = ["test/test_helper.rb", "test/test_natural_key.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
