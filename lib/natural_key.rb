$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'natural_key/natural_key'

module NaturalKey
  VERSION = '0.0.2'
end
