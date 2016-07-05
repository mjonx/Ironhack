require 'Date'
require 'colorize'

class Blog
  def initialize
  @all_posts = [] #empty array
end

  def add_post(post)
    @all_posts.push(post)
  end

  def publish_front_page
    @all_posts = @all_posts.sort! {|a, b| b.date <=> a.date}.each do |post|
      puts "Post: #{post.title}".magenta.bold
      puts "*******************"
      puts "#{post.text}".bold
      puts "-------------------\n\n"
    end
  end
end

class Post
  attr_reader :title, :date, :text
  def initialize(title, date, text)
    @title = title
    @date = date
    @text = text
  end
end

class SponsoredPost < Post
  def initialize(title, date, text)
    super(title, date, text)
    @title = "-> " + @title + " <-"
  end
end

blog = Blog.new

blog.add_post Post.new("Title one", Date.new(2016-06-10), "Blog post 1.")
blog.add_post SponsoredPost.new("Title two", Date.new(2016-06-8), "Blog post 2.")
blog.add_post Post.new("Title three", Date.new(2016-06-4), "Blog post 3.")
blog.add_post Post.new("Title four", Date.new(2016-06-12), "Blog post 4.")
blog.add_post Post.new("Title five", Date.new(2016-06-6), "Blog post 5.")

blog.publish_front_page
