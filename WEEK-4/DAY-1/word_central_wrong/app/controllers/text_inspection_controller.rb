class TextInspectionsController < ApplicationController
  def new
    render 'new'
  end

  def create
    render plain: "This route is working"
  end
end
