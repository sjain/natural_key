require 'stringio'
require 'test/unit'
require 'lib/activerecord_test_case'
require File.dirname(__FILE__) + '/../lib/natural_key'

# gem install redgreen for colored test output
begin require 'redgreen'; rescue LoadError; end

# The following is not required since we use active-record gem installed on the system
#require 'boot' unless defined?(ActiveRecord)

class Test::Unit::TestCase
# any test helper methods can go here
end
