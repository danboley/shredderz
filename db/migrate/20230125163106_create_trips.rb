class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.integer :year
      t.string :location
      t.string :hashtag
      t.string :slogan
      t.string :song
      t.string :bracket

      t.timestamps
    end
  end
end
