class HomeController < ApplicationController
  def front

  	puts "Fron------------------t"
  	@post = Post.new
  end

  def index
  	@post = Post.new
  end
end
