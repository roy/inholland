class Bid < ActiveRecord::Base
  belongs_to :item
  belongs_to :person
  validates_presence_of :item, :person, :amount
  
  def self.highest
    find(:first, :order => 'amount DESC')
  end
end