class CreateAccommodations < ActiveRecord::Migration[7.0]
  def change
    create_table :accommodations do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :link
      t.string :pic
      t.belongs_to :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
