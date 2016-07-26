class CreateTribes < ActiveRecord::Migration[5.0]
  def change
    create_table :tribes do |t|
      t.string :name

      t.timestamps
    end
  end
end
