class HousesController < ApplicationController
  respond_to :html, :json
  def index
    respond_to do |block|
      block.html
      block.json {render :json =>  House.limit(15)}
    end
  end
  def show
    render :json =>  House.find(params[:id])
  end
  def destroy
    House.find(params[:id]).destroy
    render :json =>  'Item was deleted'
  end
end