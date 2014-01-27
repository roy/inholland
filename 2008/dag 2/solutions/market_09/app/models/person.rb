class Person < ActiveRecord::Base
  has_many :items
  has_many :bids
  has_one :address
  
  validates_presence_of :email
  validates_uniqueness_of :email

  def password=(password)
    self.password_hash = Digest::MD5.hexdigest(password)
  end
  
  def self.authenticate(email, password)
    find(:first, :conditions => {:email => email, :password_hash => Digest::MD5.hexdigest(password)})
  end
end