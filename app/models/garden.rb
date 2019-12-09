class Garden < ApplicationRecord
  has_many :plants, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true, format: { with: URI::regexp(%w(http https)), message: "must be a valid image url" }
end
