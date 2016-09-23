class HomeController < ApplicationController
  def front

  	puts "Fron------------------t"
  	@post = Post.new
  end

  def index
  	@post = Post.new
  end

  def profile
  	@post = Post.new
  	@current_user_posts = current_user.posts
  end

end
