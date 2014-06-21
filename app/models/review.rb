class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates_presence_of :rating, :body, :restaurant_id
  validates :rating, numericality: {only_integer: true,
                           greater_than: 0,
                           less_than: 6}
end
