# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    id { 1 }
    email { 'megawriter@test.com' }
    password { '111111' }
    fullname { 'MegaWriter' }
    mobile_no { 380501111111 }
  end
end
