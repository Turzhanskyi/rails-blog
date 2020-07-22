# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    title { 'MyString' }
    description { 'MyText' }
    published { false }
    published_at { '2020-07-22 13:08:57' }
    author { nil }
  end
end
