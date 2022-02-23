class User < ApplicationRecord
  # require all users to have a unique username and email
  has_many :microposts
  validates :name, :email, uniqueness: true, presence: true 
end
