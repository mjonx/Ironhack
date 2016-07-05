class Post
  attr_reader :title, :date, :text
    def initialize (title, date, text)
      @title = title
      @date = date
      @text = text
    end
  end

  # def post_title
  #   return @title
  # end

end
