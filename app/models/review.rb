class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :restaurant_id, presence: true
  validates :rating, presence: true,
                     numericality: {only_integer: true,
                                    greater_than: 0,
                                    less_than: 6}
end
