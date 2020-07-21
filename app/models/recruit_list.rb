class RecruitList < ApplicationRecord
  has_many :lineitems, dependent: :destroy
end
