class Toilet < ApplicationRecord
  belongs_to :user
  validates :toilet_name, presence: true, length: {maximum: 50}, uniqueness:true
  validates :latitude, presence: true
  validates :longtitude, presence: true
end
