class WelcomeController < ApplicationController
  def index
    @items = Item.find(:all, :limit => 3, :order => "created_at DESC")
  end
  
  def show
    if params[:id]
      @item = Item.find(params[:id])
    else
      @item = Item.find_by_title(params[:title])
    end
  end
end
