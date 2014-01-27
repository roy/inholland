class Person < ActiveRecord::Base
  has_many :items
  has_one :address
  
  validates_presence_of :email
  validates_uniqueness_of :email
end