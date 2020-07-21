class List < ApplicationRecord
  has_many :lineitems, dependent: :destroy

  def add_item(player_id)
    current_item = self.lineitems.find_by(player_id: player_id)
    if current_item
      current_item.quantity += 1
    else
      current_item = self.lineitems.build(player_id: player_id)      
    end
    current_item
  end

  def total_ratings
    lineitems.to_a.sum{|item| item.item_total_rating}
  end
end
