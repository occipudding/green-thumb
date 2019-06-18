class UsersController < ApplicationController

  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user= User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to "/users"
    else
      flash[:errors] = @user.errors.full_messages
        redirect_to '/users/new'
    end
  end

  def edit

  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

end
