require 'sinatra'
require 'active_record'
require 'yaml'
require 'sinatra/reloader' if development?
require 'sinatra/flash'
require 'bcrypt'
require 'net/http'
require 'securerandom'

enable :sessions

set :bind, '0.0.0.0'
set :port, 50000

# データベース設定の読み込み
CONFIG = YAML.load(File.read('database.yml'))
ActiveRecord::Base.establish_connection(CONFIG['ImagePathDB'])

class ImagePath < ActiveRecord::Base
  self.table_name = 'image_path_table'
end
password = 'admin123'
password_hash = BCrypt::Password.create(password)
puts password_hash  # ハッシュ化されたパスワードを表示

ADMIN_PASSWORD_HASH = password_hash

helpers do
  def protected!
    return if authorized?
    redirect '/admin_login'
  end

  def authorized?
    session[:admin]
  end
end

get '/' do
  send_file './public/index.html'
end

get '/profile' do
  send_file './public/profile.html'
end

get '/contact' do
  send_file './public/contact.html'
end

get '/gallery' do
  @images = ImagePath.paginate(page: params[:page], per_page: 10)
  erb :gallery
end
get '/admin_login' do
  erb :admin_login
end

post '/admin_login' do
  if BCrypt::Password.new(ADMIN_PASSWORD_HASH) == params[:password]
    session[:admin] = true
    redirect '/admin'
  else
    flash[:error] = "Invalid password"
    redirect '/admin_login'
  end
end

get '/admin' do
  protected!
  @images = ImagePath.all
  erb :admin
end

post '/admin/add' do
  protected!
  if params[:image_file] && params[:image_file][:filename] && (tempfile = params[:image_file][:tempfile])
    original_filename = params[:image_file][:filename]
    filepath = File.join(settings.public_folder, 'img_file', original_filename)

    # ファイル名の衝突を避けるために、同名ファイルが存在するかチェックし、存在する場合はエラーを返す
    if File.exist?(filepath)
      flash[:error] = "File with the same name already exists."
      redirect '/admin'
      return
    end

    File.open(filepath, 'wb') do |file|
      file.write(tempfile.read)
    end

    ImagePath.create(image_path: "/img_file/#{original_filename}")
  end
  redirect '/admin'
end

post '/admin/delete' do
  protected!
  image = ImagePath.find(params[:id])
  filepath = File.join(settings.public_folder, image.image_path)
  File.delete(filepath) if File.exist?(filepath)
  image.destroy
  redirect '/admin'
end

get '/header' do
  send_file './public/header.html'
end
