class CreateShredders < ActiveRecord::Migration[7.0]
  def change
    create_table :shredders do |t|
      t.string :name
      t.string :nickname
      t.date :dob
      t.string :kind
      t.string :pic

      t.timestamps
    end
  end
end
