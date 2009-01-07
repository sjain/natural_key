$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'active_record'
require 'ar_natural_key_utils/natural_key'

module ArNaturalKeyUtils
  VERSION = '0.0.1'
end
