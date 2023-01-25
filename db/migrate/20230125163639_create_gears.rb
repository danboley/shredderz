class CreateGears < ActiveRecord::Migration[7.0]
  def change
    create_table :gears do |t|
      t.integer :year
      t.string :brand
      t.string :model
      t.string :specs
      t.string :pic
      t.belongs_to :shredder, null: false, foreign_key: true

      t.timestamps
    end
  end
end
