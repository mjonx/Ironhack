require 'date'
require_relative '/post'

class Blog
  def initialize
    @posts = [] #empty array
  end

  def add_post(post)
    @posts.push(post)
  end
end
