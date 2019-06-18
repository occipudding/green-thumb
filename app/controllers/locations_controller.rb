class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
    @trees = Tree.select{|t| t.location_id == @location.id}
  end
end
