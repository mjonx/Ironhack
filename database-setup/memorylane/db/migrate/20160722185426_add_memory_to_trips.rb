class AddMemoryToTrips < ActiveRecord::Migration[5.0]
  def change
    add_reference :trips, :memory, foreign_key: true
  end
end
