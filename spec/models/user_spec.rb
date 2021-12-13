# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(fullname: 'MegaWriter', email: 'megawriter@test.com', mobile_no: '380_501_111_111')
  end

  describe 'validations' do
    # let(:user) { create(:user) }

    it 'fullname should be present' do
      subject.fullname = nil
      expect(subject).to_not be_valid
    end

    context 'when fullname is not unique' do
      before { described_class.create!(fullname: 'MegaWriter', email: 'notmegawriter@test.com', mobile_no: 380701111111, password: '111111') }
      it { expect(subject).to be_invalid }
    end

    it 'email should be present' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    context 'when email is not unique' do
      before { described_class.create!(fullname: 'NotMegaWriter', email: 'megawriter@test.com', mobile_no: 380601111111, password: '111111') }
      it { expect(subject).to be_invalid }
    end

    it 'mobile_number should be present' do
      subject.mobile_no = nil
      expect(subject).to_not be_valid
    end

    context 'when mobile number is not unique' do
      before { described_class.create!(fullname: 'NotMegaWriter', email: 'notmegawriter@test.com', mobile_no: 380501111111, password: '111111') }
      it { expect(subject).to be_invalid }
    end

    
  end
end
