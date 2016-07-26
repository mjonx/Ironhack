class CreateWildboars < ActiveRecord::Migration[5.0]
  def change
    create_table :wildboars do |t|

      t.timestamps
    end
  end
end
