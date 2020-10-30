class PostsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard
  def new
    @post= Post.all.order(date: :desc)
    if params[:title].present?
      @post = Post.where('title = ?', params[:title])
    else
      @post = Post.all.order(date: :desc)
    end
  end

  def create
    @post = Post.create(title: params[:title], date: params[:date], image_url: params[:image_url], content: params[:content])
  end
  
  def dashboard
    
    
  end
end
