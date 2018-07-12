class CreateGuestLists < ActiveRecord::Migration[5.2]
  def change
    create_table :guest_lists do |t|
      t.string :first_name
      t.string :last_name
      t.string :rsvp
      t.string :address
      t.integer :phone
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
