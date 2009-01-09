Gem::Specification.new do |s|
  s.name = %q{natural_key}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Pathfinder Associates"]
  s.date = %q{2009-01-09}
  s.description = %q{This gem adds create_or_update functionality to ActiveRecord based on a user-defined natural-key.}
  s.email = ["info@pathf.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc"]
  s.files = [".gitignore", "History.txt", "lib/natural_key/natural_key.rb", "lib/natural_key.rb", "Manifest.txt", "PostInstall.txt", "Rakefile", "README.rdoc", "test/database.yml", "test/fixtures/schema.rb", "test/lib/activerecord_test_case.rb", "test/lib/activerecord_test_connector.rb", "test/test_helper.rb", "test/test_natural_key.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://www.pathf.com}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{natural_key}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{This gem adds create_or_update functionality to ActiveRecord based on a user-defined natural-key.}
  s.test_files = ["test/test_helper.rb", "test/test_natural_key.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_development_dependency(%q<newgem>, [">= 1.2.3"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<newgem>, [">= 1.2.3"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<newgem>, [">= 1.2.3"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
