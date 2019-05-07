class OwnedCard < ApplicationRecord
  belongs_to :player
  belongs_to :card 
  
  attribute :count, default: 1
  validate :limit, on: :create
  
  validates_presence_of :count

  def limit
    errors.add(:base,"over limit") if player &&
      player.cards.select(card_id).count > 4
  end
end
