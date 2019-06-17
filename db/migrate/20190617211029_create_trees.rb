class CreateTrees < ActiveRecord::Migration[5.2]
  def change
    create_table :trees do |t|
      t.string :species
      t.integer :age
      t.integer :user_id
      t.integer :location_id

      t.timestamps
    end
  end
end
