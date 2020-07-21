class Lineitem < ApplicationRecord
  belongs_to :player
  belongs_to :list
  belongs_to :contact, optional: true

  def item_total_rating
    self.player.rating * self.quantity
  end
end
