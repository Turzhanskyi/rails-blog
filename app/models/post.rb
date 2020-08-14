# frozen_string_literal: true

class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: %i[slugged history finders]

  belongs_to :author
  has_many :elements, dependent: :destroy

  has_one_attached :header_image

  validates :title, :description, presence: true
  validates :description, length: { within: 50..250 }

  def should_generate_new_friendly_id?
    title_changed?
  end
end
