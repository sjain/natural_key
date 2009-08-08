require 'rubygems'
require 'rake'
require 'echoe'
require 'lib/natural_key'

Echoe.new('natural_key', NaturalKey::VERSION) do |p|
  p.description = "ActiveRecord.create_or_update based on a user-defined natural-key"
  p.url = "http://github.com/sjain/natural_key"
  p.author = "Sharad Jain"
  p.email = "shaanjain@gmail.com"
  p.ignore_pattern = ["tmp/*", "script/*", "nbproject/**/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
