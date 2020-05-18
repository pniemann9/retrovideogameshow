class Booking < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :videogame
  has_many :reviews
end
