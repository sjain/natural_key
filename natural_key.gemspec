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
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "sqlite3"
  #gem.add_development_dependency "mocha"
end
