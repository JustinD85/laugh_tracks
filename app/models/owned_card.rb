class OwnedCard < ApplicationRecord
  belongs_to :player
  belongs_to :card 

  validate :limit, on: :create

  def limit
    errors.add(:base,"over limit") if player.cards.select(card_id).count > 3
  end
end
