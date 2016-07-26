class AddTribeIdToAnimal < ActiveRecord::Migration[5.0]
  def change
    add_column :animals, :tribe_id, :integer
  end
end
