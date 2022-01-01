class Post < ApplicationRecord
  scope :published, -> { where(is_published: true) }

  has_rich_text :content
end
