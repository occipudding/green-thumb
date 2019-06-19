class TreesController < ApplicationController
  def show
    @tree = Tree.find(params[:id])
  end

  def new
    @tree = Tree.new
  end

  def create
    @tree = Tree.new
    if @tree.valid?
      @tree.save
    else
      render new_tree_path
    end
  end
end
