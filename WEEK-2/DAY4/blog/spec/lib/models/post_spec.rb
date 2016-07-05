require_relative '../../../lib/models/post.rb'

describe 'Post' do
  # include Rack::Test::Methods
  #
  # def app
  #   Sinatra::Application
  # end

  describe Post do
    before(:each) do
      @post1 = Post.new("Title 1", Date.new(2016,06,20), "Blog content 1")
      @post2 = Post.new("Title 2", Date.new(2016,06,10), "Blog content 2")
      @post3 = Post.new("Title 3", Date.new(2016,06,16), "Blog content 3")
    end

    it ('#title should return title') do
      expect(@post1.title).to eq("Title 1")
      expect(@post2.title).to eq("Title 2")
      expect(@post3.title).to eq("Title 3")
    end
  end
  end
end
