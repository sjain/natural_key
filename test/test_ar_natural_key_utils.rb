require File.dirname(__FILE__) + '/test_helper.rb'

class User < ActiveRecord::Base
  natural_key :first_name, :last_name
end

class TestArNaturalKeyUtils < ActiveSupport::TestCase
  def test_update_by_natural_key
    created_record = User.create(:first_name => 'John', :last_name => "Smith", :age => 21, :address => "Chicago")
    updated_record = User.create_or_update_by_natural_key(:first_name => 'John', :last_name => "Smith", :age => 25, :address => "New York")
    assert_equal(created_record.id, updated_record.id)
    assert_equal(25, updated_record.age)
    assert_equal("New York", updated_record.address)
  end
  def test_create_by_natural_key
    created_record = User.create(:first_name => 'John', :last_name => "Smith", :age => 21, :address => "Chicago")
    updated_record = User.create_or_update_by_natural_key(:first_name => 'Different', :last_name => "Smith", :age => 25, :address => "New York")
    assert_not_equal(created_record.id, updated_record.id)
    assert_equal(25, updated_record.age)
    assert_equal("New York", updated_record.address)
  end
end
