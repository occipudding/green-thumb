class TreesController < ApplicationController
  def show
    @tree = Tree.find(params[:id])
  end
end
