require 'rails_helper'

RSpec.describe Domain, :type => :model do
  before { @valid_test_domain = Domain.new(
                                       hostname: 'www.distilnetworks.com',
                                       origin_ip_address: '111.11.1.1111' ) }

  subject { @valid_test_domain }
  context 'valid domain' do
    it { should validate_presence_of(:hostname) }
    it { should validate_uniqueness_of(:hostname) }
    it { should validate_presence_of(:origin_ip_address) }
  end
end
