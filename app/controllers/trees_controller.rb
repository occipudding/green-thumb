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
    @tree = Tree.create(tree_params)
    if @tree.valid?
      session[:tree_id] = @tree.id
      redirect_to trees_path
    else
      redirect_to new_tree_path
    end
  end

  private

  def tree_params
    params.require(:tree).permit(:species, :age, :user_id, :location_id)
  end
end
