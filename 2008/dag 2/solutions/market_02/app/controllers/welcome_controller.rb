class WelcomeController < ApplicationController
  def index
    @items = Item.find(:all, :limit => 3, :order => "created_at DESC")
  end
end
