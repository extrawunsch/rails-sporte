class AddPickUpAtOffers < ActiveRecord::Migration[6.0]
  def change
    change_column :offers, :pick_up_at, :datetime
  end
end
