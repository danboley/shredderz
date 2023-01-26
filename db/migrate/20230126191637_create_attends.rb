class CreateAttends < ActiveRecord::Migration[7.0]
  def change
    create_table :attends do |t|
      t.belongs_to :shredder, null: false, foreign_key: true
      t.belongs_to :trip, null: false, foreign_key: true
      t.boolean :present

      t.timestamps
    end
  end
end
