class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @trees = Tree.select { |t| t.user_id == @user.id }
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.name = user_params[:name]
      @user.password = user_params[:password]
      @user.save
      redirect_to "/users"
    else
      flash[:errors] = @user.errors.full_messages
        redirect_to '/users/new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.valid?
    @user.update
    redirect_to "/users/#{users.id}"
    else
    flash[:erros] = @user.erros.full.messages
      redirect_to user_path(@user)
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
