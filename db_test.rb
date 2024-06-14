require 'active_record'
require 'yaml'

CONFIG = YAML.load(File.read('database.yml'))
ActiveRecord::Base.establish_connection(CONFIG['ImagePathDB'])

begin
  ActiveRecord::Base.connection
  puts "Connected to the database successfully."
rescue ActiveRecord::NoDatabaseError => e
  puts "Database not found: #{e.message}"
rescue ActiveRecord::ConnectionNotEstablished => e
  puts "Connection failed: #{e.message}"
rescue StandardError => e
  puts "An error occurred: #{e.message}"
end
