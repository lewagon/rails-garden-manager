class Plant < ApplicationRecord
  belongs_to :garden

  validates :name, presence: true, uniqueness: { scope: :garden_id }
  validates :image_url, presence: true, format: { with: URI::regexp(%w(http https)), message: "must be a valid image url" }

end
