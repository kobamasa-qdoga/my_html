class ImagesController < ApplicationController
    def index
      @images = Image.page(params[:page]).per(10)  # 1ページに表示する画像の数を設定
    end
  end
  