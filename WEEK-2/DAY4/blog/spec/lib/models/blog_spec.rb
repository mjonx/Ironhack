require_relative '../../../lib/models/blog.rb'

describe 'Blog' do
  # include Rack::Test::Methods
  #
  # def app
  #   Sinatra::Application
  # end

  before(:each) do
    @blog = Blog.new
  end

  it ('#posts returns a list of posts') do
    expect(@blog.posts).to eq#(@posts)
  end


end
