class TreesController < ApplicationController
  def show
    @tree = Tree.find(params[:id])
  end

  def new
    @tree = Tree.new
    @trees = Tree.all
    @locations = Location.all
  end

  def create
    # byebug
    if @logged_in
      @tree = Tree.create(species: tree_params[:species], age: tree_params[:age], user_id: @current_user.id, location_id: tree_params[:location_id])
      session[:tree_id] = @tree.id
      redirect_to "/trees/#{@tree.id}"
    else
      flash[:messages] = "Must be logged in to plant a tree."
      redirect_to new_login_path
    end
  end

  private

  def tree_params
    params.require(:tree).permit(:species, :age, :user_id, :location_id)
  end
end
