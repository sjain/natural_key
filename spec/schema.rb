ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: ":memory:"
)

ActiveRecord::Base.connection.execute("DROP TABLE IF EXISTS 'users'")
ActiveRecord::Base.connection.create_table(:users) do |t|
    t.string :first_name
    t.string :last_name
    t.integer :age
    t.string :address
    t.integer :salary, :default => 70000
end

class User < ActiveRecord::Base
  #include NaturalKey
  natural_key :first_name, :last_name
end
