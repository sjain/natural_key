#print "Using native MySQL\n"
#require 'logger'
#RAILS_DEFAULT_LOGGER = Logger.new('debug.log')
#RAILS_DEFAULT_LOGGER.level = Logger::DEBUG
#ActiveRecord::Base.logger = RAILS_DEFAULT_LOGGER
RAILS_DEFAULT_LOGGER = $STDERR

# GRANT ALL PRIVILEGES ON ar_natural_key_test.* to 'arnk'@'localhost';

ActiveRecord::Base.configurations = {
  'ar_natural_key_test' => {
    :adapter  => 'mysql',
    :username => 'arnk',
    :password => 'arnk',
    :encoding => 'utf8',
    :database => 'ar_natural_key_test',
  }
}
ActiveRecord::Base.establish_connection 'ar_natural_key_test'

ActiveRecord::Schema.define do
  create_table :users, :force => true do |t|
    t.string :first_name
    t.string :last_name
    t.integer :age
    t.string :address
  end
end
