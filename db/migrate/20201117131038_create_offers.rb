class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :title
      t.string :description
      t.string :category
      t.integer :price
      t.string :location
      t.date :pick_up_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
