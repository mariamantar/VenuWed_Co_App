class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.string :rating
      t.string :image
      t.references :venue_listing, foreign_key: true

      t.timestamps
    end
  end
end
