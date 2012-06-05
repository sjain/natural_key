require 'spec_helper'

describe NaturalKey do

  before do
    User.destroy_all
  end

  it "should create by natural key" do
    created_record = User.create(:first_name => 'John', :last_name => "Smith", :age => 21, :address => "Chicago")
    updated_record = User.create_or_update_by_natural_key(:first_name => 'Different', :last_name => "Smith", :age => 25, :address => "New York")
    updated_record.id.should_not == created_record.id
    updated_record.age.should == 25
    updated_record.address.should == "New York"
  end

  it "should update by natural key" do
    created_record = User.create(:first_name => 'John', :last_name => "Smith", :age => 21, :address => "Chicago")
    updated_record = User.create_or_update_by_natural_key(:first_name => 'John', :last_name => "Smith", :age => 25, :address => "New York")
    updated_record.id.should == created_record.id
    updated_record.age.should == 25
    updated_record.address.should == "New York"
  end

  it "should update by natural key when keys are strings instead of symbols" do
    User.create(:first_name => 'Mary', :last_name => "Beth", :age => 21, :address => "Chicago")
    john_smith = User.create(:first_name => 'John', :last_name => "Smith", :age => 21, :address => "Chicago")
    updated_record = User.create_or_update_by_natural_key(
      'first_name' => 'John',
      'last_name' => "Smith",
      'age' => 25,
      'address' => "New York"
    )
    updated_record.id.should == john_smith.id
    updated_record.age.should == 25
    updated_record.address.should == "New York"
  end

end
