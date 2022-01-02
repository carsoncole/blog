class Post < ApplicationRecord
  has_one_attached :image

  scope :published, -> { where(is_published: true) }

  validates :title, presence: true
  validates :date, presence: true

  has_rich_text :content
end
