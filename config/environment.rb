require 'bundler'
Bundler.require

# DB = {
#   conn: SQLite3::Database.new('db/star_wars.sqlite')
# }

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/star_wars.sqlite'
)

require_all "lib"
