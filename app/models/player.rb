class Player < ApplicationRecord
  has_many :lineitems

  before_destroy :make_sure_no_line_items_in_any_cart
  validates(:name, :description, :image, presence: true) #make sure these are entered into each player
  validates :name, uniqueness: true #each name has to be unique
  validates :rating, numericality: {greater_than_or_equal_to: 1.00} #every rating must be greater than 1 bc rating scale is 1-5
  validates :image, allow_blank:true, format: {with: %r{\.(jpg|png)\Z}i, message: 'Image must be a JPG or PNG file type'}

  # instance method
  def make_sure_no_line_items_in_any_cart
    if self.lineitems.empty?
      return true
    else 
      errors.add(:base, "Line Items Present")
      retrun false
    end

  end
end
