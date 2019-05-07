class CreateDeck < ActiveRecord::Migration[5.1]
  def change
    create_table :decks do |t|
      t.references :owned_card, foreign_key: true
      t.string :name
    end
  end
end
