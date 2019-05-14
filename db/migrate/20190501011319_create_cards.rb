class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string  :name
      t.integer :cost
      t.integer :attack
      t.integer :speed
      t.integer :range
      t.integer :defense
      t.integer :health
      t.integer :size
      t.string  :card_image
      t.string  :description

      t.timestamps
    end
  end
end
