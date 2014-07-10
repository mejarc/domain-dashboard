require 'rails_helper'

describe Account do
  before { @test_account = Account.new(name: 'My Test Account') }
  subject { @test_account }

  context 'when valid' do
    it { should validate_uniqueness_of(:name) }
  end
end
