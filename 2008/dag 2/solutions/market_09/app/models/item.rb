class Item < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  validates_length_of :description, :maximum => 200
  
  belongs_to :person
  has_many :bids
  
  def current_price
    b = bids.highest
    b ? b.amount : 0
  end

end