class Pizza < ActiveRecord::Base
  def price
    title.length.to_i
  end
end
