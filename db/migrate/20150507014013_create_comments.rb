class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :commentor_id
	  t.text :comment
	  t.date :date_filed
      t.timestamps
    end
  end
end
