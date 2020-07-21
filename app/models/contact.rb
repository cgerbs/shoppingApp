class Contact < ApplicationRecord
  has_many :lineitems, dependent: :destroy
  validates :name, :address, :email, presence: true


  def add_players_from_list(list)
    list.lineitems.each do |item|
      item.list_id = nil
      item.list_id = self.id
    end
  end
end
