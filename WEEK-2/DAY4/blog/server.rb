require 'sinatra'
require 'sinatra-reloader'

require_relative 'lib/models/blog.rb'
require_relative 'lib/models/post.rb'

blog = Blog.new

blog.add_post Post.new("Title 1", Date.new(2016,06,20), "Blog content 1")
blog.add_post Post.new("Title 2", Date.new(2016,06,10), "Blog content 2")
blog.add_post Post.new("Title 3", Date.new(2016,06,16), "Blog content 3")

get '/' do
  @posts = blog.posts
  erb :home
end
