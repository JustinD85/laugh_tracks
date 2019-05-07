class Card < ApplicationRecord
  has_many :owned_cards
  has_many :players, through: :owned_cards
  
  validates_presence_of :name
  validates_presence_of :cost
  validates_presence_of :description
#  validate :card_limit, on: :create
end
