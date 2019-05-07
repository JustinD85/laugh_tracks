class AddCountToOwnedCard < ActiveRecord::Migration[5.1]
  def change
    add_column :owned_cards, :count, :integer
  end
end
