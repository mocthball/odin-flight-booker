class Flight < ApplicationRecord
    validates :departure_airport, presence: true
    validates :arrival_airport, presence: true
    validates :departure_time, presence: true
    validates :flight_time, presence: true
  
    belongs_to :departure_airport, class_name: 'Airport', foreign_key: 'airport'
    belongs_to :arrival_airport, class_name: 'Airport', foreign_key: 'airport'
  end