class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.references :departure_airport, foreign_key: 'airport'
      t.references :arrival_airport, foreign_key: 'airport'
      t.datetime :departure_time
      t.integer :flight_time
      t.timestamps
    end
  end
end
