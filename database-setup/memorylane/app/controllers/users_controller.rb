class UsersController < ApplicationController
  def index
    @users = User.order(first_name: :asc)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    render 'new'
  end

  def create
    @user = User.new(
    first_name: params[:user][:first_name],
    last_name: params[:user][:last_name],
    email: params[:user][:email])
    @user.save

    redirect_to "/users/#{@user.id}"

  end

  def edit
  end

  def update
  end
end
