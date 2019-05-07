class Deck < ApplicationRecord
  has_many :owned_cards  
  validates_presence_of :name
 end
