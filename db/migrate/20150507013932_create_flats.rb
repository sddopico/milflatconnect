class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
      t.string :address
      t.string :city
      t.string :base
      t.text :summary
      t.integer :price
      t.integer :sec_deposit
      t.string :photos, array: true
      t.integer :user_id

      t.timestamps
    end
  end
end
