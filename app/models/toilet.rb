class Toilet < ApplicationRecord
  belongs_to :user
  validates :toilet_name, presence: true, length: {maximum: 30}, uniqueness:true
  validates :latitude, presence: true
  validates :longtitude, presence: true
  validates :remark, length: {maximum: 100}
end
