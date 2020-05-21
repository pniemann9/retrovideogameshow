class Videogame < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :price, presence: true

  pg_search_scope :search_by_name,
    against: [ :name],
    using: {
      tsearch: { prefix: true } 
    }
end
