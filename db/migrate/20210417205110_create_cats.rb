class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :make
      t.string :serial
      t.integer :price

      t.timestamps
    end
  end
end
