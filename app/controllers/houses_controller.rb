class HousesController < ApplicationController
  respond_to :html, :json
  def index
    respond_to do |block|
      block.html
      block.json {render :json =>  House.all}
    end
  end
  def show
    render :json =>  House.find(params[:id])

  end
end