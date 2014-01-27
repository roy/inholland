class Item < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  validates_length_of :description, :maximum => 200
  
  def current_price
    title.length + description.length
  end

end