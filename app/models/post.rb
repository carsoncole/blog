class Post < ApplicationRecord
  has_one_attached :image

  has_many :post_topics
  has_many :topics, through: :post_topics

  scope :published, -> { where(is_published: true) }

  validates :title, presence: true
  validates :date, presence: true

  has_rich_text :content

  after_initialize :init

  def init
    self.date ||= Date.today
    self.author ||= Rails.configuration&.default_author || nil
  end
end
