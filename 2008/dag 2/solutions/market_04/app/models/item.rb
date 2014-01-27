class Item < ActiveRecord::Base
  def current_price
    title.length + description.length
  end

end