require 'date'

class Blog
  def initialize
    @all_posts = [] #empty array
  end
  def add_post(post)
    @all_posts.push(post)
  end
  def publish_front_page
    @all_posts.each do |post|
        puts "Post #{post.title}"
        puts "**************"
        puts "#{post.text}"
        puts "----------------"
    end
  end
end

class Post
  attr_reader :title, :text
  def initialize (title, date, text)
    @title = title
    @date = date
    @text = text
  end
end

blog = Blog.new

blog.add_post Post.new("Title 1", Date.new(2016,06,20), "Blog content 1")
blog.add_post Post.new("Title 2", Date.new(2016,06,10), "Blog content 2")
blog.add_post Post.new("Title 3", Date.new(2016,06,16), "Blog content 3")

blog.publish_front_page
