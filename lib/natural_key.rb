$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module NaturalKey
  version = YAML.load_file(File.dirname(__FILE__) + "/../VERSION.yml")
  VERSION = "#{version[:major]}.#{version[:minor]}.#{version[:patch]}"
end

require 'natural_key/base'
