# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    id { 1 }
    email { 'megawriter@test.com' }
    password { '111111' }
    fullname { 'MegaWriter' }
    mobile_no { 380_501_111_111 }
  end
end
