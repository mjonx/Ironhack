class UsersController < ApplicationController
  def index
    @users = User.order(name: :asc)
  end

  def new
    render 'new'
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    if @user
      redirect_to("users/new")
    else
      user = User.new(
      name: params[:user][:name],
      email: params[:user][:email])

      user.save

      redirect_to("/users")
    end
  end

  def destroy
  end
end
