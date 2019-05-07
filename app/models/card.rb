class Card < ApplicationRecord
  has_many   :decks
  has_many :players, through: :decks
  
  validates_presence_of :name
  validates_presence_of :cost
  validates_presence_of :description
end
