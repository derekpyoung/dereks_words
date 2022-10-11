class User < ApplicationRecord
  validates :name, presence: true 
  has_secure_password 
  validates :email, presence: true, uniqueness: true
  
  has_many :user_games

  

end
