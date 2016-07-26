class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :age
      t.string :race

      t.timestamps
    end
  end
end
