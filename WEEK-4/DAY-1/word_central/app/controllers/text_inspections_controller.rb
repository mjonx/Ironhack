class TextInspectionsController < ApplicationController
  def new
    render 'new'
  end

  def create
    @text = params[:text_inspection][:user_text]
    # render plain: params[:text_inspection][:user_text].inspect
    @word_count = @text.split(' ').length
    # render plain: @text
    @reading_time = (@word_count / 275.to_f).round(2)
    def count_words(string)
    @words = @text.split(' ')
    @frequency = Hash.new
    @words.each do |word|
      if @frequency[word.downcase]
        @frequency[word.downcase] += 1
      else
        @frequency[word.downcase] = 1
      end
      return frequency
    end
  end
    render 'result'
  end
end
