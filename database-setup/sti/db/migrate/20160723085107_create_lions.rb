class CreateLions < ActiveRecord::Migration[5.0]
  def change
    create_table :lions do |t|

      t.timestamps
    end
  end
end
