class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :name
      t.float :price
      t.string :image
      t.string :details
      t.integer :duration
      t.float :rating

      t.timestamps
    end
  end
end
