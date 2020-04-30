class Listing < ApplicationRecord
  belongs_to :breed
  enum sex: {female: 0, male: 1}
  # validates :title, :breed_id, :sex, :price, :deposit, :city, :state, :date_of_birth, presence: true
  has_one_attached :picture
  belongs_to :users
end
