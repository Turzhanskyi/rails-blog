# frozen_string_literal: true

FactoryBot.define do
  factory :element do
    element_type { 'MyString' }
    content { 'MyText' }
    post { nil }
    position { 1 }
  end
end
