class ChangeColumnCard < ActiveRecord::Migration[5.1]
  def change
    add_index :cards , :name, unique: true
  end
end
