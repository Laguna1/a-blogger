# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    title { 'Rails rails rails rails' }
    description do
      "When working on another project for my boot camp,
         I decided to build an application centered around
         saving and updating your current reading list."
    end
    user_id { 1 }
  end
end
