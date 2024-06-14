require 'active_record'
require 'yaml'
require 'logger'

# ログファイルを設定
ActiveRecord::Base.logger = Logger.new(STDOUT)

# データベース設定の読み込み
CONFIG = YAML.load(File.read('database.yml'))
ActiveRecord::Base.establish_connection(CONFIG['ImagePathDB'])

begin
  ActiveRecord::Base.connection
  puts "Connected to the database successfully."
rescue ActiveRecord::NoDatabaseError => e
  puts "Database not found: #{e.message}"
  puts e.backtrace.join("\n")
rescue ActiveRecord::ConnectionNotEstablished => e
  puts "Connection failed: #{e.message}"
  puts e.backtrace.join("\n")
rescue StandardError => e
  puts "An error occurred: #{e.message}"
  puts e.backtrace.join("\n")
end
