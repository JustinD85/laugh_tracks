class Deck < ApplicationRecord
  has_many :deck_owned_cards
  has_many :owned_cards, through: :deck_owned_cards

  validates_presence_of :name
 end
