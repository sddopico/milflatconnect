class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
      t.text :tagline
      t.date :available_date
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :city
      t.string :base
      t.text :description
      t.integer :bedroom
      t.integer :bathroom
      t.integer :price
      t.integer :sec_deposit
      t.integer :cleaning_fee
      t.text :house_rules
      t.integer :user_id

      t.timestamps
    end
  end
end
