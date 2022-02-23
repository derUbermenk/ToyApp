class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, lenght: { maximum: 140 }, presence: true
end
