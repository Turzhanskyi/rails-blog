# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :author
  has_many :elements, dependent: :destroy

  has_one_attached :header_image

  validates :title, :description, presence: true
  validates :description, length: { within: 50..250 }
end
