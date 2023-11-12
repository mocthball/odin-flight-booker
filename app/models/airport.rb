class Airport < ApplicationRecord
  validates :airport, presence: true, uniqueness: true

  has_many :departing_flights,
    class_name: :Flight,
    foreign_key: :departure_airport,
    dependent: :destroy

  has_many :arriving_flights,
    class_name: :Flight,
    foreign_key: :arrival_airport,
    dependent: :destroy
end