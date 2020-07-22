# frozen_string_literal: true

class Element < ApplicationRecord
  belongs_to :post

  validates :element_type, inclusion: { in: %w[paragraph image video-embed] }

  has_rich_text :content
end
