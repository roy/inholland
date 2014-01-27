class Item < ActiveRecord::Base
  def current_price
    (title + description).length
  end
end