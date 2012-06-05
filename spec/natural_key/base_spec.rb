require 'spec_helper'

class User < ActiveRecord::Base
  #include NaturalKey
  natural_key :first_name, :last_name

  attr_accessor :age_required

  validates :first_name, :presence => true
  validates :age, :presence => true, :if => 'age_required == true'
end

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

  context 'returning invalid record on validation failure' do
    it "should return invalid record with creation fails validation" do
      record = User.create_or_update_by_natural_key(
        :first_name => nil, # validation failure
      )
      record.should_not be_valid
      record.errors.get(:first_name).should == ["can't be blank"]
    end

    it "should return invalid record with update fails validation" do
      User.create(
        :first_name => 'John',
        :last_name => "Smith",
        :age => 21,
        :address => "Chicago"
      )
      updated_record = User.create_or_update_by_natural_key(
        :first_name => 'John',
        :last_name => "Smith",
        :age_required => true,
        :age => nil
      )
      updated_record.should_not be_valid
      updated_record.errors.get(:age).should == ["can't be blank"]
    end
  end

  context 'raise error on validation failure' do
    it "should raise error on creation when validation fails" do
      begin
        User.create_or_update_by_natural_key!(
          :first_name => nil, # validation failure
        )
        fail("Expected ActiveRecord exception, found none.")
      rescue ActiveRecord::RecordInvalid => e
        # expected
      end
    end
    it "should raise error on update validation fails" do
      User.create(
        :first_name => 'John',
        :last_name => "Smith",
        :age => 21,
        :address => "Chicago"
      )
      begin
        User.create_or_update_by_natural_key!(
          :first_name => 'John',
          :last_name => "Smith",
          :age_required => true,
          :age => nil
        )
      rescue ActiveRecord::RecordInvalid
        # expected
      end
    end
  end


end
