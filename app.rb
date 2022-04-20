require 'sqlite3'

db = SQLite3::Database.new 'sqlite.db'

# db.execute "insert into cars(name, price) values('Toyota', 7000)"

db.execute "SELECT * FROM Cars" do |car|
    puts car
    puts '---'
end
db.close