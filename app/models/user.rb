class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  #validates :password, length: { minimum: 1 }, allow_nil:true

  has_secure_password
end
