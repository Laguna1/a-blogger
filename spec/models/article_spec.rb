# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:user1) { create(:user) }
  let(:article1) { create(:article, user_id: user1.id) }
  let(:rails) { create(:category) }

  before(:example) do
    user1
    article1
    rails
  end

  describe '#user' do
    it "shows the  article's author as User1 fullname" do
      expect(article1.user.fullname).to eql('MegaWriter')
    end
  end

  describe '# categories' do
    it 'Shows "rails" as category of created article' do
      article1.categories << rails
      expect(article1.categories.include?(rails)).to eql(true)
    end
  end
end
