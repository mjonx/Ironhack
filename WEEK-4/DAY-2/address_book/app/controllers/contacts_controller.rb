class ContactsController < ApplicationController
  def index
    @contacts = Contact.order(name: :asc)
  end

  def new
    render 'new'
  end

  def create
    render(:text => params[:contact].inspect)
  end
end
