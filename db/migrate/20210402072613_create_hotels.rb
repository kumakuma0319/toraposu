class CreateHotels < ActiveRecord::Migration[6.0]
  def change
    create_table :hotels do |t|
      t.string :name, null: false
      t.string :adress, null: false
      t.integer :price, null: false
      t.integer :check_in_hour, null: false
      t.integer :check_in_minutes, null: false
      t.integer :check_out_hour, null: false
      t.integer :check_out_minutes, null: false
      t.text :facilities, null: false
      t.text :others_infomation
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
