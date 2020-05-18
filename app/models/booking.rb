class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :videogame
  has_many :reviews

end
