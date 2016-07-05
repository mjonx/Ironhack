class ContactsController < ApplicationController
  def index
    @contacts = Contact.order(name: :asc)
    # @id = params[:id]
  end

  def new
    render 'new'
  end

  def create
    #Create new contact from params[:contact]
    contact = Contact.new(
    name: params[:contact][:name],
    address: params[:contact][:address],
    phone_number: params[:contact][:phone_number],
    email: params[:contact][:email],
    status: params[:contact][:status])

    contact.save

    redirect_to("/contacts")
  end

  def show
    @id = params[:id]
    @contact = Contact.find_by(id: @id)
    render 'show'
  end

end
