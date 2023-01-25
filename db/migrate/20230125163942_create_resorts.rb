class CreateResorts < ActiveRecord::Migration[7.0]
  def change
    create_table :resorts do |t|
      t.string :name
      t.string :map
      t.integer :top_ele
      t.integer :base_ele
      t.integer :vertical
      t.integer :area
      t.integer :runs
      t.string :pic
      t.belongs_to :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
