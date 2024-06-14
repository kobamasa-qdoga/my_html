require 'active_record'
require 'yaml'

CONFIG = YAML.load(File.read('database.yml'))
ActiveRecord::Base.establish_connection(CONFIG['ImagePathDB'])

# デバック用
puts "connection is ok"

class ImagePath < ActiveRecord::Base
  self.table_name = 'image_path_table'
end

# デバック用
puts "SQL is ok"

new_image = ImagePath.new(image_path: '/home/kobamasa/my_html/public/img_file/1_low.jpg')
new_image.save

# デバック用
puts "new data is ok"

images = ImagePath.all
images.each do |image|
  puts "Image Path: #{image.image_path}"
end