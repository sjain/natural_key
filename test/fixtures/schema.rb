ActiveRecord::Schema.define do
  create_table :users, :force => true do |t|
    t.string :first_name
    t.string :last_name
    t.integer :age
    t.string :address
    t.integer :salary, :default => 70000
  end
end
