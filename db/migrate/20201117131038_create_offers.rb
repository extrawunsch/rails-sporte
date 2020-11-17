class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :title
      t.string :description
      t.string :category
      t.integer :price
      t.string :location
      t.date :pick_up_at
      t.references :host, null: false, foreign_key: { to_table: :users }


      t.timestamps
    end
  end
end
