class CreateHotels < ActiveRecord::Migration[6.0]
  def change
    create_table :hotels do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.integer :check_in, null: false
      t.integer :check_out, null: false
      t.text :facilities, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
