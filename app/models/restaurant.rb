class Restaurant < ActiveRecord::Base
  has_many :reviews
  validates_presence_of :name, :address, :city, :state, :zip_code
   
end
