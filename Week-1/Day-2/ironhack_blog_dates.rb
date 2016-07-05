require 'date'

class Blog
  def initialize
    @all_posts = [] #empty array
  end

  def add_post(post)
    @all_posts.push(post)
  end

  def publish_front_page
    @all_posts = @all_posts.sort! {|a, b| a.date <=> b.date}.each do |post|
        puts "Post #{post.title}"
        puts "**************"
        puts "#{post.text}"
        puts "----------------"
    end
  end
end

class Post
  attr_reader :title, :date, :text
  def initialize (title, date, text)
    @title = title
    @date = date
    @text = text
  end
end

class SponsoredPost < Post
  def initialize(title, date, text)
    super(title, date, text)
  end

  def title
    @title = "******" + @title + "******"
  end

end

# @all_posts.sort {|a, b| b.date <=> a.date} .each do |post|

blog = Blog.new

blog.add_post Post.new("Title 1", Date.new(2016,06,20), "Blog content 1")
blog.add_post SponsoredPost.new("Title 2", Date.new(2016,06,10), "Blog content 2")
blog.add_post Post.new("Title 3", Date.new(2016,06,16), "Blog content 3")

blog.publish_front_page
