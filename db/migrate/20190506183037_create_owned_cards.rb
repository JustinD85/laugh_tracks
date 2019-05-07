class CreateOwnedCards < ActiveRecord::Migration[5.1]
  def change
    create_table :owned_cards do |t|
      t.string :name
      t.references :player, foreign_key: true
      t.references :card, foreign_key: true

      t.timestamps
    end
  end
end
