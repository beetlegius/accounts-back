class CreateMovements < ActiveRecord::Migration[5.0]
  def change
    create_table :movements do |t|
      t.string :name
      t.decimal :ammount, precision: 8, scale: 2

      t.belongs_to :client, foreign_key: true, index: true
      t.timestamps
    end
  end
end
